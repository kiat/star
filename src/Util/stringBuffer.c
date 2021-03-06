/*
 Buffer implementation
 Copyright (c) 2016, 2017. Francis G. McCabe
 */

#include "stringBufferP.h"

#include <stdlib.h>
#include <assert.h>
#include <starOptions.h>
#include <ooio.h>

/* Set up the buffer file class */

static void initBufferClass(classPo class, classPo req);

static void BufferDestroy(objectPo o);

static void BufferInit(objectPo o, va_list *args);

static retCode bufferInBytes(ioPo io, byte *ch, integer count, integer *actual);

static retCode bufferOutBytes(ioPo io, byte *b, integer count, integer *actual);

static retCode bufferBackByte(ioPo io, byte b);

static retCode bufferAtEof(ioPo io);

static retCode bufferInReady(ioPo io);

static retCode bufferOutReady(ioPo io);

static retCode bufferFlusher(ioPo io, long count);

static retCode bufferClose(ioPo io);

static retCode bufferMark(ioPo io, integer *mark);

static retCode bufferReset(ioPo io, integer mark);

BufferClassRec BufferClass = {
  {(classPo) &IoClass, /* parent class is io object */
    "buffer", /* this is the buffer class */
    NULL,
    initBufferClass, /* Buffer class initializer */
    O_INHERIT_DEF, /* Buffer object element creation */
    BufferDestroy, /* Buffer objectdestruction */
    O_INHERIT_DEF, /* erasure */
    BufferInit, /* initialization of a buffer object */
    sizeof(BufferObject), /* size of a buffer object */
    NULL, /* pool of buffer values */
    O_INHERIT_DEF,                        // No special hash function
    O_INHERIT_DEF,                        // No special equality
    PTHREAD_ONCE_INIT, /* not yet initialized */
    PTHREAD_MUTEX_INITIALIZER
  },
  {},
  {bufferInBytes, /* inByte  */
    bufferOutBytes, /* outBytes  */
    bufferBackByte, /* backByte */
    bufferAtEof, /* at end of file? */
    bufferInReady, /* readyIn  */
    bufferOutReady, /* readyOut  */
    bufferFlusher, /* flush  */
    bufferClose /* close  */
  }};

classPo bufferClass = (classPo) &BufferClass;

static void initBufferClass(classPo class, classPo req) {
}

// IO initialization should already be done at this point
static void BufferInit(objectPo o, va_list *args) {
  bufferPo f = O_BUFFER(o);

  // Set up the buffer pointers
  f->buffer.in_pos = 0;
  f->buffer.out_pos = 0;
  setEncoding(O_IO(f), va_arg(*args, ioEncoding)); /* set up the encoding */
  f->buffer.buffer = va_arg(*args, char *);
  f->buffer.bufferSize = va_arg(*args, integer); /* set up the buffer */
  f->io.mode = va_arg(*args, ioDirection); /* set up the access mode */
  f->buffer.resizeable = va_arg(*args, logical); /* is this buffer resizeable? */
  if (isReadingFile(O_IO(f)) == Ok && isWritingFile(O_IO(f)) != Ok)
    f->buffer.size = f->buffer.bufferSize;
  else
    f->buffer.size = 0;
}

static void BufferDestroy(objectPo o) {
  bufferPo str = O_BUFFER(o);
  if (str->buffer.resizeable)
    free(str->buffer.buffer);
}

// Implement class buffer functions

static retCode bufferInBytes(ioPo io, byte *ch, integer count, integer *actual) {
  retCode ret = Ok;
  integer remaining = count;
  bufferPo f = O_BUFFER(io);

  while (remaining > 0) {
    if (f->buffer.in_pos >= f->buffer.size) {
      if (remaining == count)
        ret = Eof;
      break;
    } else {
      *ch++ = (byte) f->buffer.buffer[f->buffer.in_pos++];
      remaining--;
    }
  }
  *actual = count - remaining;

  return ret;
}

static retCode ensureSpace(bufferPo f, integer count) {
  assert(isFileOpen(O_IO(f)) == Ok);
  if (f->buffer.out_pos + count >= f->buffer.bufferSize) {
    if (f->buffer.resizeable) {
      integer nlen = f->buffer.bufferSize + (f->buffer.bufferSize >> 1) + count; /* allow for some growth */
      char *nbuff = realloc(f->buffer.buffer, sizeof(char) * nlen);
      if (nbuff != NULL) {
        f->buffer.buffer = nbuff;
        f->buffer.bufferSize = nlen;
      } else
        syserr("could not allocate more space for buffer");
    } else {
      return Fail;
    }
  }
  return Ok;
}

static retCode bufferOutBytes(ioPo io, byte *b, integer count, integer *actual) {
  bufferPo f = O_BUFFER(io);

  retCode ret = ensureSpace(f, count);

  for (int ix = 0; ret == Ok && ix < count; ix++)
    f->buffer.buffer[f->buffer.out_pos++] = b[ix];
  f->buffer.size = f->buffer.out_pos;
  *actual = count;
  return ret;
}

static retCode bufferBackByte(ioPo io, byte b) {
  bufferPo f = O_BUFFER(io);

  if (f->buffer.in_pos > 0) {
    f->buffer.buffer[--f->buffer.in_pos] = b;
    return Ok;
  } else
    return Error;
}

static retCode bufferMark(ioPo io, integer *mark) {
  bufferPo f = O_BUFFER(io);

  *mark = f->buffer.in_pos;
  return Ok;
}

static retCode bufferReset(ioPo io, integer mark) {
  bufferPo f = O_BUFFER(io);

  if (f->buffer.in_pos > 0) {
    if (mark < f->buffer.size) {
      f->buffer.in_pos = mark;
      return Ok;
    } else
      return Fail;
  } else
    return Error;
}

static retCode bufferAtEof(ioPo io) {
  bufferPo f = O_BUFFER(io);

  if (f->buffer.out_pos < f->buffer.size)
    return Ok;
  else
    return Eof;
}

static retCode bufferInReady(ioPo io) {
  bufferPo f = O_BUFFER(io);

  if (f->buffer.in_pos < f->buffer.size)
    return Ok;
  else
    return Eof;
}

static retCode bufferOutReady(ioPo io) {
  bufferPo f = O_BUFFER(io);

  if (f->buffer.out_pos < f->buffer.bufferSize)
    return Ok;
  else {
    if (f->buffer.resizeable)
      return Ok;
    else
      return Fail;
  }
}

static retCode bufferFlusher(ioPo io, long count) {
  return Ok;
}

static retCode bufferClose(ioPo io) {
  destroyObject(O_OBJECT(io)); /* this will get rid of all the buffer objects attributes */
  return Ok;
}

retCode clearBuffer(bufferPo b) {
  b->buffer.in_pos = 0;
  b->buffer.out_pos = 0;
  b->io.inBpos = b->io.inCpos = 0;
  b->buffer.size = 0;
  return Ok;
}

static integer bufferNo = 0;

bufferPo newStringBuffer() {
  char name[MAX_SYMB_LEN];

  strMsg(name, NumberOf(name), "<buffer%d>", bufferNo++);

  byte *buffer = (byte *) malloc(sizeof(byte) * 128);

  return O_BUFFER(newObject(bufferClass, name, utf8Encoding, buffer, 128, ioWRITE, True));
}

bufferPo newReadStringBuffer(char *text, integer textLen) {
  char name[MAX_SYMB_LEN];

  strMsg(name, NumberOf(name), "<buffer%d>", bufferNo++);

  return O_BUFFER(newObject(bufferClass, name, utf8Encoding, text, textLen, ioREAD, False));
}

bufferPo newIoStringBuffer() {
  char name[MAX_SYMB_LEN];

  strMsg(name, NumberOf(name), "<buffer%d>", bufferNo++);

  byte *buffer = (byte *) malloc(sizeof(byte) * 128);

  return O_BUFFER(newObject(bufferClass, name, utf8Encoding, buffer, 128, ioWRITE | ioREAD, True));
}

bufferPo fixedStringBuffer(char *buffer, long len) {
  char *name = "buffer";
  return O_BUFFER(newObject(bufferClass, name, utf8Encoding, buffer, len, ioWRITE, False));
}

char *getTextFromBuffer(integer *actual, bufferPo s) {
  *actual = s->buffer.size;

  ensureSpace(s, 1);
  s->buffer.buffer[s->buffer.size] = '\0';

  return s->buffer.buffer;
}

integer textFromBuffer(bufferPo b, char *buffer, integer len) {
  integer cnt = minimum(len, b->buffer.size);
  for (integer ix = 0; ix < cnt; ix++) {
    buffer[ix] = b->buffer.buffer[ix];
  }
  return cnt;
}

retCode rewindBuffer(bufferPo in) {
  in->buffer.in_pos = 0;
  in->io.inBpos = in->io.inCpos = 0;
  return Ok;
}

retCode insertIntoBuffer(bufferPo b, codePoint ch, integer *offset) {
  integer chSize = codePointSize(ch);
  integer insertPos = *offset;

  if (insertPos < 0 || insertPos > b->buffer.out_pos)
    return Error;
  else {
    ensureSpace(b, chSize);
    for (integer ix = b->buffer.out_pos; ix > insertPos; ix--) {
      b->buffer.buffer[ix + 1] = b->buffer.buffer[ix];
    }
    appendCodePoint(b->buffer.buffer, offset, b->buffer.bufferSize, ch);
    b->buffer.out_pos += chSize;
    b->buffer.size += chSize;
    return Ok;
  }
}

#ifndef _CODE_H_
#define _CODE_H_

#include "config.h"
#include "ooio.h"
#include "term.h"
#include "heap.h"
#include "opcodes.h"
#include "pkg.h"

typedef uint16 insWord, *insPo;

typedef struct _method_ *methodPo;

void initCode();

extern methodPo C_MTD(termPo t);

typedef void (*jitCode)();

extern normalPo codeLits(methodPo mtd);
extern integer codeLitCount(methodPo mtd);

extern termPo getMtdLit(methodPo mtd, integer litNo);

extern integer lclCount(methodPo mtd);
extern integer codeArity(methodPo mtd);

extern packagePo loadedPackage(char *package);
extern char *loadedVersion(char *package);

extern packagePo markLoaded(char *package, char *version);
extern logical isLoadedPackage(packagePo pkg);

extern termPo findPcLocation(methodPo mtd,integer pc);
extern integer insOffset(methodPo m, insPo pc);
extern insPo pcAddr(methodPo mtd, integer off);
extern integer mtdCodeSize(methodPo mtd);

extern methodPo
defineMtd(heapPo H, insPo ins, integer insCount, integer lclCount, integer stackDelta, labelPo lbl, normalPo pool,
          normalPo locals, normalPo lines);

#endif

//
// Created by Francis McCabe on 5/25/18.
//

#ifndef STAR_BKPOINT_H
#define STAR_BKPOINT_H

#include "debug.h"

typedef enum {
  lineBreak,
  callBreak
} BreakPtType;

typedef struct _break_point_ *breakPointPo;

retCode addBreakPoint(breakPointPo bp);
retCode isValidBreakPoint(breakPointPo b);
logical lineBreakPointHit(normalPo loc);
logical callBreakPointHit(labelPo lbl);
retCode clearBreakPoint(breakPointPo bp);
retCode parseBreakPoint(char *buffer, long bLen, breakPointPo bp);
logical sameBreakPoint(breakPointPo b1, breakPointPo b2);
logical breakPointInUse(breakPointPo b);
void markBpOutOfUse(breakPointPo b);

DebugWaitFor dbgAddBreakPoint(char *line, processPo p, insWord ins, void *cl);
DebugWaitFor dbgClearBreakPoint(char *line, processPo p, insWord ins, void *cl);

#endif //STAR_BKPOINT_H

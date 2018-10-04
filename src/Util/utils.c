/*
  Utility functions
  Copyright (c) 2016, 2017. Francis G. McCabe

  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file
  except in compliance with the License. You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software distributed under the
  License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied. See the License for the specific language governing
  permissions and limitations under the License.
*/

#include <stdlib.h>
#include "utils.h"
#include "formio.h"
#include "file.h"

void syserr(const char* msg){
  outMsg(logFile,"Fatal error: %s\n", msg);
  exit(99);
}

char *genSym(char * prefix){
  static int count = 0;
  static char buffer[MAXLINE];

  strMsg(buffer,NumberOf(buffer),"%s%d",prefix,count++);
  return buffer;
}


//
// Created by Francis McCabe on 2/23/17.
//

#ifndef CAFE_PKGP_H
#define CAFE_PKGP_H

#include "pkg.h"
#include "cafeOptions.h"

typedef struct _package_record_ {
  char packageName[MAX_SYMB_LEN];
  char version[MAX_SYMB_LEN];
} PackageRec;

static inline PackageRec makePkg(char *name,char *vers){
  PackageRec pkg;

  uniCpy(pkg.packageName,NumberOf(pkg.packageName),name);
  uniCpy(pkg.version,NumberOf(pkg.version),vers);

  return pkg;
}

extern retCode dispPkgNm(ioPo f, void *data, long depth, long precision, logical alt);

#endif //CAFE_PKGP_H
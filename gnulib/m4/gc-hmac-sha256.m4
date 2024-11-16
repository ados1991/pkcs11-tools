# gc-hmac-sha256.m4
# serial 3
dnl Copyright (C) 2005, 2007, 2009-2024 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl This file is offered as-is, without any warranty.

AC_DEFUN([gl_GC_HMAC_SHA256],
[
  AC_REQUIRE([gl_GC])
  if test "$ac_cv_libgcrypt" != yes; then
    gl_SHA256
    gl_MEMXOR
  fi
])

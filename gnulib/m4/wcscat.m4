# wcscat.m4
# serial 2
dnl Copyright (C) 2011-2024 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl This file is offered as-is, without any warranty.

AC_DEFUN([gl_FUNC_WCSCAT],
[
  AC_REQUIRE([gl_WCHAR_H_DEFAULTS])
  AC_CHECK_FUNCS_ONCE([wcscat])
  if test $ac_cv_func_wcscat = no; then
    HAVE_WCSCAT=0
  fi
])

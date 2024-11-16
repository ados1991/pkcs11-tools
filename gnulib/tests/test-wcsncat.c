/* Test of wcsncat() function.
   Copyright (C) 2010-2024 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* Written by Bruno Haible <bruno@clisp.org>, 2024.  */

#include <config.h>

/* Specification.  */
#include <wchar.h>

#include <stddef.h>

#include "macros.h"

int
main ()
{
  int volatile value;

  /* Test zero-length operations on NULL pointers, allowed by
     <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3322.pdf>.  */

#if 0 /* I think this is invalid, per ISO C 23 § 7.31.4.3.2.  */
  value = (wcsncat (NULL, L"x", 0) == NULL);
  ASSERT (value);
#endif

  {
    wchar_t y[2] = { L'x', 0 };
    value = (wcsncat (y, NULL, 0) == y);
    ASSERT (value);
  }

  return test_exit_status;
}

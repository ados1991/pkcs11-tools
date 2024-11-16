/* Test the Unicode character type functions.
   Copyright (C) 2007-2024 Free Software Foundation, Inc.

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

#include <config.h>

#include "unictype.h"

#include <string.h>

#include "macros.h"

int
main ()
{
  ASSERT (strcmp (uc_general_category_name (UC_CATEGORY_Z), "Z") == 0);
  ASSERT (strcmp (uc_general_category_name (UC_CATEGORY_Nl), "Nl") == 0);
  ASSERT (uc_general_category_name (uc_general_category_or (UC_CATEGORY_Z, UC_CATEGORY_Nl)) == NULL);

  return test_exit_status;
}

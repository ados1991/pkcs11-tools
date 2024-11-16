/* DO NOT EDIT! GENERATED AUTOMATICALLY! */
/* Test the Unicode character type functions.
   Copyright (C) 2007-2024 Free Software Foundation, Inc.

   This file is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published
   by the Free Software Foundation, either version 3 of the License,
   or (at your option) any later version.

   This file is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

#include "test-predicate-part1.h"

    { 0x00A0, 0x00A0 },
    { 0x034F, 0x034F },
    { 0x035C, 0x0362 },
    { 0x0F08, 0x0F08 },
    { 0x0F0C, 0x0F0C },
    { 0x0F12, 0x0F12 },
    { 0x180E, 0x180E },
    { 0x2007, 0x2007 },
    { 0x2011, 0x2011 },
    { 0x202F, 0x202F }

#define PREDICATE(c) uc_is_property_non_break (c)
#include "test-predicate-part2.h"
#
# libtcod
# Copyright (c) 2008-2018 Jice & Mingos & rmtew
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * The name of Jice or Mingos may not be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY JICE, MINGOS AND RMTEW ``AS IS'' AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL JICE, MINGOS OR RMTEW BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#
# Mingos' NameGen
# This file was written by Dominik "Mingos" Marczuk.
#

# import list, mersenne_types

type
  Namegen* = pointer  ##  The generator type.


proc namegenParse*(
  filename: cstring; random: Random = nil) {.
    cdecl, importc: "TCOD_namegen_parse", dynlib: LIB_NAME.}
  ##  Parse a file with syllable sets.

proc namegenGenerate*(
  name: cstring; allocate: bool = false): cstring {.
    cdecl, importc: "TCOD_namegen_generate", dynlib: LIB_NAME.}
  ##  Generate a name.

proc namegenGenerateCustom*(
  name, rule: cstring; allocate: bool = false): cstring {.
    cdecl, importc: "TCOD_namegen_generate_custom", dynlib: LIB_NAME.}
  ##  Generate a name using a custom generation rule.

proc namegenGetSetsList*(): List {.
    cdecl, importc: "TCOD_namegen_get_sets", dynlib: LIB_NAME.}
  ##  Retrieve the list of all available syllable set names.

proc namegenGetSets*(): seq[string] =
  ##  Retrieve the list of all available syllable set names.
  var list = namegenGetSetsList()
  result = cstringArrayToSeq(cast[cstringArray](listBegin(list)), listSize(list))
  listDelete(list)

proc namegenDestroy*() {.
    cdecl, importc: "TCOD_namegen_destroy", dynlib: LIB_NAME.}
  ##  Delete a generator.


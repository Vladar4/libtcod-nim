#
# libtcod 1.5.1
# Copyright (c) 2008,2009,2010,2012 Jice & Mingos
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * The name of Jice or Mingos may not be used to endorse or promote products
#       derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY JICE AND MINGOS ``AS IS'' AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL JICE OR MINGOS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#


#typedef void *TCOD_list_t;
type
  PList* = pointer

#TCODLIB_API TCOD_list_t TCOD_list_new();
proc list_new*(): PList {.cdecl, importc: "TCOD_list_new", dynlib: LIB_NAME.}

#TCODLIB_API TCOD_list_t TCOD_list_allocate(int nb_elements);
proc list_allicate*(nb_elements: int): PList {.cdecl, importc: "TCOD_list_allocate", dynlib: LIB_NAME.}

#TCODLIB_API TCOD_list_t TCOD_list_duplicate(TCOD_list_t l);
proc list_duplicate*(list: PList): PList {.cdecl, importc: "TCOD_list_duplicate", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_list_delete(TCOD_list_t l);
proc list_delete*(list: PList) {.cdecl, importc: "TCOD_list_delete", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_list_push(TCOD_list_t l, const void * elt);
proc list_push*(list: PList, elt: pointer) {.cdecl, importc: "TCOD_list_push", dynlib: LIB_NAME.}

#TCODLIB_API void * TCOD_list_pop(TCOD_list_t l);
proc list_pop*(list: PList): pointer {.cdecl, importc: "TCOD_list_pop", dynlib: LIB_NAME.}

#TCODLIB_API void * TCOD_list_peek(TCOD_list_t l);
proc list_peek*(list: PList): pointer {.cdecl, importc: "TCOD_list_peek", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_list_add_all(TCOD_list_t l, TCOD_list_t l2);
proc list_add_all*(list, list2: PList) {.cdecl, importc: "TCOD_list_add_all", dynlib: LIB_NAME.}

#TCODLIB_API void * TCOD_list_get(TCOD_list_t l,int idx);
proc list_get*(list: PList, idx: int): pointer {.cdecl, importc: "TCOD_list_get", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_list_set(TCOD_list_t l,const void *elt, int idx);
proc list_set*(list: PList, elt: pointer, idx: int) {.cdecl, importc: "TCOD_list_set", dynlib: LIB_NAME.}

#TCODLIB_API void ** TCOD_list_begin(TCOD_list_t l);
proc list_begin*(list: PList): ptr pointer {.cdecl, importc: "TCOD_list_begin", dynlib: LIB_NAME.}

#TCODLIB_API void ** TCOD_list_end(TCOD_list_t l);
proc list_end*(list: PList): ptr pointer {.cdecl, importc: "TCOD_list_end", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_list_reverse(TCOD_list_t l);
proc list_reverse*(list: PList) {.cdecl, importc: "TCOD_list_reverse", dynlib: LIB_NAME.}

#TCODLIB_API void **TCOD_list_remove_iterator(TCOD_list_t l, void **elt);
proc list_remove_iterator*(list: PList, elt: ptr pointer): ptr pointer {.cdecl, importc: "TCOD_list_remove_iterator", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_list_remove(TCOD_list_t l, const void * elt);
proc list_remove*(list: PList, elt: pointer) {.cdecl, importc: "TCOD_list_remove", dynlib: LIB_NAME.}

#TCODLIB_API void **TCOD_list_remove_iterator_fast(TCOD_list_t l, void **elt);
proc list_remove_iterator_fast*(list: PList, elt: ptr pointer): ptr pointer {.cdecl, importc: "TCOD_list_remove_iterator_fast", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_list_remove_fast(TCOD_list_t l, const void * elt);
proc list_remove_fast*(list: PList, elt: pointer) {.cdecl, importc: "TCOD_list_remove_fast", dynlib: LIB_NAME.}

#TCODLIB_API bool TCOD_list_contains(TCOD_list_t l,const void * elt);
proc list_contains*(list: PList, elt: pointer): bool {.cdecl, importc: "TCOD_list_contains", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_list_clear(TCOD_list_t l);
proc list_clear*(list: PList) {.cdecl, importc: "TCOD_list_clear", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_list_clear_and_delete(TCOD_list_t l);
proc list_clear_and_delete*(list: PList) {.cdecl, importc: "TCOD_list_clear_and_delete", dynlib: LIB_NAME.}

#TCODLIB_API int TCOD_list_size(TCOD_list_t l);
proc list_size*(list: PList): int {.cdecl, importc: "TCOD_list_size", dynlib: LIB_NAME.}

#TCODLIB_API void ** TCOD_list_insert_before(TCOD_list_t l,const void *elt,int before);
proc list_insert_before*(list: PList, elt: pointer, before: int): ptr pointer {.cdecl, importc: "TCOD_list_insert_before", dynlib: LIB_NAME.}

#TCODLIB_API bool TCOD_list_is_empty(TCOD_list_t l);
proc list_is_empty*(list: PList): bool {.cdecl, importc: "TCOD_list_is_empty", dynlib: LIB_NAME.}

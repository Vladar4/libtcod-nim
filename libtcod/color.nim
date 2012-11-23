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


type
  TColor*{.bycopy.} = tuple [r, g, b: uint8]


#constructors
#TCODLIB_API TCOD_color_t TCOD_color_RGB(uint8 r, uint8 g, uint8 b);
proc color_RGB*(r, g, b: uint8): TColor {.cdecl, importc: "TCOD_color_RGB", dynlib: LIB_NAME.}

#TCODLIB_API TCOD_color_t TCOD_color_HSV(float h, float s, float v);
proc color_HSV*(h, s, v: float): TColor {.cdecl, importc: "TCOD_color_", dynlib: LIB_NAME.}


# basic operations
#TCODLIB_API bool TCOD_color_equals (TCOD_color_t c1, TCOD_color_t c2);
proc color_equals*(c1, c2: TColor): bool {.cdecl, importc: "TCOD_color_equals", dynlib: LIB_NAME.}

#TCODLIB_API TCOD_color_t TCOD_color_add (TCOD_color_t c1, TCOD_color_t c2);
proc color_add*(c1, c2: TColor): TColor {.cdecl, importc: "TCOD_color_add", dynlib: LIB_NAME.}

#TCODLIB_API TCOD_color_t TCOD_color_subtract (TCOD_color_t c1, TCOD_color_t c2);
proc color_subtract*(c1, c2: TColor): TColor {.cdecl, importc: "TCOD_color_subtract", dynlib: LIB_NAME.}

#TCODLIB_API TCOD_color_t TCOD_color_multiply (TCOD_color_t c1, TCOD_color_t c2);
proc color_multiply*(c1, c2: TColor): TColor {.cdecl, importc: "TCOD_color_multiply", dynlib: LIB_NAME.}

#TCODLIB_API TCOD_color_t TCOD_color_multiply_scalar (TCOD_color_t c1, float value);
proc color_multiply_scalar*(c1: TColor, value: float): TColor {.cdecl, importc: "TCOD_color_multiply_scalar", dynlib: LIB_NAME.}

#TCODLIB_API TCOD_color_t TCOD_color_lerp (TCOD_color_t c1, TCOD_color_t c2, float coef);
proc color_lerp*(c1, c2: TColor, coef: float): TColor {.cdecl, importc: "TCOD_color_lerp", dynlib: LIB_NAME.}


# HSV transformations
#TCODLIB_API void TCOD_color_set_HSV (TCOD_color_t *c,float h, float s, float v);
proc color_set_HSV*(c: ptr TColor, h, s, v: float) {.cdecl, importc: "TCOD_color_set_HSV", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_color_get_HSV (TCOD_color_t c,float * h, float * s, float * v);
proc color_get_HSV*(c: TColor, h, s, v: ptr float) {.cdecl, importc: "TCOD_color_get_HSV", dynlib: LIB_NAME.}

#TCODLIB_API float TCOD_color_get_hue (TCOD_color_t c);
proc color_get_hue*(c: TColor): float {.cdecl, importc: "TCOD_color_get_hue", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_color_set_hue (TCOD_color_t *c, float h);
proc color_set_hue*(c: ptr TColor, h: float) {.cdecl, importc: "TCOD_color_set_hue", dynlib: LIB_NAME.}

#TCODLIB_API float TCOD_color_get_saturation (TCOD_color_t c);
proc color_get_saturation*(c: TColor): float {.cdecl, importc: "TCOD_color_get_saturation", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_color_set_saturation (TCOD_color_t *c, float s);
proc color_set_saturation*(c: ptr TColor, s: float) {.cdecl, importc: "TCOD_color_set_saturation", dynlib: LIB_NAME.}

#TCODLIB_API float TCOD_color_get_value (TCOD_color_t c);
proc color_get_value*(c: TColor): float {.cdecl, importc: "TCOD_color_get_value", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_color_set_value (TCOD_color_t *c, float v);
proc color_set_value*(c: ptr TColor, v: float) {.cdecl, importc: "TCOD_color_set_value", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_color_shift_hue (TCOD_color_t *c, float hshift);
proc color_shift_hue*(c: ptr TColor, hshift: float) {.cdecl, importc: "TCOD_color_shift_hue", dynlib: LIB_NAME.}

#TCODLIB_API void TCOD_color_scale_HSV (TCOD_color_t *c, float scoef, float vcoef);
proc color_scale_HSV*(c: ptr TColor, scoef, vcoef: float) {.cdecl, importc: "TCOD_color_scale_HSV", dynlib: LIB_NAME.}


# color map
#TCODLIB_API void TCOD_color_gen_map(TCOD_color_t *map, int nb_key, TCOD_color_t const *key_color, int const *key_index);
proc color_gen_map*(map: ptr TColor, nb_key: int, key_color: ptr TColor, key_index: ptr int) {.cdecl, importc: "TCOD_color_gen_map", dynlib: LIB_NAME.}


type
  TColorName* = enum
    TCOD_COLOR_RED,
    TCOD_COLOR_FLAME,
    TCOD_COLOR_ORANGE,
    TCOD_COLOR_AMBER,
    TCOD_COLOR_YELLOW,
    TCOD_COLOR_LIME,
    TCOD_COLOR_CHARTREUSE,
    TCOD_COLOR_GREEN,
    TCOD_COLOR_SEA,
    TCOD_COLOR_TURQUOISE,
    TCOD_COLOR_CYAN,
    TCOD_COLOR_SKY,
    TCOD_COLOR_AZURE,
    TCOD_COLOR_BLUE,
    TCOD_COLOR_HAN,
    TCOD_COLOR_VIOLET,
    TCOD_COLOR_PURPLE,
    TCOD_COLOR_FUCHSIA,
    TCOD_COLOR_MAGENTA,
    TCOD_COLOR_PINK,
    TCOD_COLOR_CRIMSON,
    TCOD_COLOR_NB

  TColorLevel* = enum
    TCOD_COLOR_DESATURATED,
    TCOD_COLOR_LIGHTEST,
    TCOD_COLOR_LIGHTER,
    TCOD_COLOR_LIGHT,
    TCOD_COLOR_NORMAL,
    TCOD_COLOR_DARK,
    TCOD_COLOR_DARKER,
    TCOD_COLOR_DARKEST,
    TCOD_COLOR_LEVELS


# color array
#const
#  TCOD_colors*: array[0..TCOD_COLOR_NB-1, array[0..TCOD_COLOR_LEVELS-1]]


# COLORS
const
  # color values
  BLACK* = (0'u8, 0'u8, 0'u8)
  DARKEST_GREY* = (31'u8, 31'u8, 31'u8)
  DARKER_GREY* = (63'u8, 63'u8, 63'u8)
  DARK_GREY* = (95'u8, 95'u8, 95'u8)
  GREY* = (127'u8, 127'u8, 127'u8)
  LIGHT_GREY* = (159'u8, 159'u8, 159'u8)
  LIGHTER_GREY* = (191'u8, 191'u8, 191'u8)
  LIGHTEST_GREY* = (223'u8, 223'u8, 223'u8)
  WHITE*: TColor = (255'u8, 255'u8, 255'u8)

  DARKEST_SEPIA* = (31'u8, 24'u8, 15'u8)
  DARKER_SEPIA* = (63'u8, 50'u8, 31'u8)
  DARK_SEPIA* = (94'u8, 75'u8, 47'u8)
  SEPIA* = (127'u8, 101'u8, 63'u8)
  LIGHT_SEPIA* = (158'u8, 134'u8, 100'u8)
  LIGHTER_SEPIA* = (191'u8, 171'u8, 143'u8)
  LIGHTEST_SEPIA* = (222'u8, 211'u8, 195'u8)

  # desaturated
  DESATURATED_RED* = (127'u8, 63'u8, 63'u8)
  DESATURATED_FLAME* = (127'u8, 79'u8, 63'u8)
  DESATURATED_ORANGE* = (127'u8, 95'u8, 63'u8)
  DESATURATED_AMBER* = (127'u8, 111'u8, 63'u8)
  DESATURATED_YELLOW* = (127'u8, 127'u8, 63'u8)
  DESATURATED_LIME* = (111'u8, 127'u8, 63'u8)
  DESATURATED_CHARTREUSE* = (95'u8, 127'u8, 63'u8)
  DESATURATED_GREEN* = (63'u8, 127'u8, 63'u8)
  DESATURATED_SEA* = (63'u8, 127'u8, 95'u8)
  DESATURATED_TURQUOISE* = (63'u8, 127'u8, 111'u8)
  DESATURATED_CYAN* = (63'u8, 127'u8, 127'u8)
  DESATURATED_SKY* = (63'u8, 111'u8, 127'u8)
  DESATURATED_AZURE* = (63'u8, 95'u8, 127'u8)
  DESATURATED_BLUE* = (63'u8, 63'u8, 127'u8)
  DESATURATED_HAN* = (79'u8, 63'u8, 127'u8)
  DESATURATED_VIOLET* = (95'u8, 63'u8, 127'u8)
  DESATURATED_PURPLE* = (111'u8, 63'u8, 127'u8)
  DESATURATED_FUCHSIA* = (127'u8, 63'u8, 127'u8)
  DESATURATED_MAGENTA* = (127'u8, 63'u8, 111'u8)
  DESATURATED_PINK* = (127'u8, 63'u8, 95'u8)
  DESATURATED_CRIMSON* = (127'u8, 63'u8, 79'u8)

  # lightest
  LIGHTEST_RED* = (255'u8, 191'u8, 191'u8)
  LIGHTEST_FLAME* = (255'u8, 207'u8, 191'u8)
  LIGHTEST_ORANGE* = (255'u8, 223'u8, 191'u8)
  LIGHTEST_AMBER* = (255'u8, 239'u8, 191'u8)
  LIGHTEST_YELLOW* = (255'u8, 255'u8, 191'u8)
  LIGHTEST_LIME* = (239'u8, 255'u8, 191'u8)
  LIGHTEST_CHARTREUSE* = (223'u8, 255'u8, 191'u8)
  LIGHTEST_GREEN* = (191'u8, 255'u8, 191'u8)
  LIGHTEST_SEA* = (191'u8, 255'u8, 223'u8)
  LIGHTEST_TURQUOISE* = (191'u8, 255'u8, 239'u8)
  LIGHTEST_CYAN* = (191'u8, 255'u8, 255'u8)
  LIGHTEST_SKY* = (191'u8, 239'u8, 255'u8)
  LIGHTEST_AZURE* = (191'u8, 223'u8, 255'u8)
  LIGHTEST_BLUE* = (191'u8, 191'u8, 255'u8)
  LIGHTEST_HAN* = (207'u8, 191'u8, 255'u8)
  LIGHTEST_VIOLET* = (223'u8, 191'u8, 255'u8)
  LIGHTEST_PURPLE* = (239'u8, 191'u8, 255'u8)
  LIGHTEST_FUCHSIA* = (255'u8, 191'u8, 255'u8)
  LIGHTEST_MAGENTA* = (255'u8, 191'u8, 239'u8)
  LIGHTEST_PINK* = (255'u8, 191'u8, 223'u8)
  LIGHTEST_CRIMSON* = (255'u8, 191'u8, 207'u8)

  # lighter
  LIGHTER_RED* = (255'u8, 127'u8, 127'u8)
  LIGHTER_FLAME* = (255'u8, 159'u8, 127'u8)
  LIGHTER_ORANGE* = (255'u8, 191'u8, 127'u8)
  LIGHTER_AMBER* = (255'u8, 223'u8, 127'u8)
  LIGHTER_YELLOW* = (255'u8, 255'u8, 127'u8)
  LIGHTER_LIME* = (223'u8, 255'u8, 127'u8)
  LIGHTER_CHARTREUSE* = (191'u8, 255'u8, 127'u8)
  LIGHTER_GREEN* = (127'u8, 255'u8, 127'u8)
  LIGHTER_SEA* = (127'u8, 255'u8, 191'u8)
  LIGHTER_TURQUOISE* = (127'u8, 255'u8, 223'u8)
  LIGHTER_CYAN* = (127'u8, 255'u8, 255'u8)
  LIGHTER_SKY* = (127'u8, 223'u8, 255'u8)
  LIGHTER_AZURE* = (127'u8, 191'u8, 255'u8)
  LIGHTER_BLUE* = (127'u8, 127'u8, 255'u8)
  LIGHTER_HAN* = (159'u8, 127'u8, 255'u8)
  LIGHTER_VIOLET* = (191'u8, 127'u8, 255'u8)
  LIGHTER_PURPLE* = (223'u8, 127'u8, 255'u8)
  LIGHTER_FUCHSIA* = (255'u8, 127'u8, 255'u8)
  LIGHTER_MAGENTA* = (255'u8, 127'u8, 223'u8)
  LIGHTER_PINK* = (255'u8, 127'u8, 191'u8)
  LIGHTER_CRIMSON* = (255'u8, 127'u8, 159'u8)

  # light
  LIGHT_RED* = (255'u8, 63'u8, 63'u8)
  LIGHT_FLAME* = (255'u8, 111'u8, 63'u8)
  LIGHT_ORANGE* = (255'u8, 159'u8, 63'u8)
  LIGHT_AMBER* = (255'u8, 207'u8, 63'u8)
  LIGHT_YELLOW* = (255'u8, 255'u8, 63'u8)
  LIGHT_LIME* = (207'u8, 255'u8, 63'u8)
  LIGHT_CHARTREUSE* = (159'u8, 255'u8, 63'u8)
  LIGHT_GREEN* = (63'u8, 255'u8, 63'u8)
  LIGHT_SEA* = (63'u8, 255'u8, 159'u8)
  LIGHT_TURQUOISE* = (63'u8, 255'u8, 207'u8)
  LIGHT_CYAN* = (63'u8, 255'u8, 255'u8)
  LIGHT_SKY* = (63'u8, 207'u8, 255'u8)
  LIGHT_AZURE* = (63'u8, 159'u8, 255'u8)
  LIGHT_BLUE* = (63'u8, 63'u8, 255'u8)
  LIGHT_HAN* = (111'u8, 63'u8, 255'u8)
  LIGHT_VIOLET* = (159'u8, 63'u8, 255'u8)
  LIGHT_PURPLE* = (207'u8, 63'u8, 255'u8)
  LIGHT_FUCHSIA* = (255'u8, 63'u8, 255'u8)
  LIGHT_MAGENTA* = (255'u8, 63'u8, 207'u8)
  LIGHT_PINK* = (255'u8, 63'u8, 159'u8)
  LIGHT_CRIMSON* = (255'u8, 63'u8, 111'u8)

  # normal
  RED* = (255'u8, 0'u8, 0'u8)
  FLAME* = (255'u8, 63'u8, 0'u8)
  ORANGE* = (255'u8, 127'u8, 0'u8)
  AMBER* = (255'u8, 191'u8, 0'u8)
  YELLOW* = (255'u8, 255'u8, 0'u8)
  LIME* = (191'u8, 255'u8, 0'u8)
  CHARTREUSE* = (127'u8, 255'u8, 0'u8)
  GREEN* = (0'u8, 255'u8, 0'u8)
  SEA* = (0'u8, 255'u8, 127'u8)
  TURQUOISE* = (0'u8, 255'u8, 191'u8)
  CYAN* = (0'u8, 255'u8, 255'u8)
  SKY* = (0'u8, 191'u8, 255'u8)
  AZURE* = (0'u8, 127'u8, 255'u8)
  BLUE* = (0'u8, 0'u8, 255'u8)
  HAN* = (63'u8, 0'u8, 255'u8)
  VIOLET* = (127'u8, 0'u8, 255'u8)
  PURPLE* = (191'u8, 0'u8, 255'u8)
  FUCHSIA* = (255'u8, 0'u8, 255'u8)
  MAGENTA* = (255'u8, 0'u8, 191'u8)
  PINK* = (255'u8, 0'u8, 127'u8)
  CRIMSON* = (255'u8, 0'u8, 63'u8)

  # dark
  DARK_RED* = (191'u8, 0'u8, 0'u8)
  DARK_FLAME* = (191'u8, 47'u8, 0'u8)
  DARK_ORANGE* = (191'u8, 95'u8, 0'u8)
  DARK_AMBER* = (191'u8, 143'u8, 0'u8)
  DARK_YELLOW* = (191'u8, 191'u8, 0'u8)
  DARK_LIME* = (143'u8, 191'u8, 0'u8)
  DARK_CHARTREUSE* = (95'u8, 191'u8, 0'u8)
  DARK_GREEN* = (0'u8, 191'u8, 0'u8)
  DARK_SEA* = (0'u8, 191'u8, 95'u8)
  DARK_TURQUOISE* = (0'u8, 191'u8, 143'u8)
  DARK_CYAN* = (0'u8, 191'u8, 191'u8)
  DARK_SKY* = (0'u8, 143'u8, 191'u8)
  DARK_AZURE* = (0'u8, 95'u8, 191'u8)
  DARK_BLUE* = (0'u8, 0'u8, 191'u8)
  DARK_HAN* = (47'u8, 0'u8, 191'u8)
  DARK_VIOLET* = (95'u8, 0'u8, 191'u8)
  DARK_PURPLE* = (143'u8, 0'u8, 191'u8)
  DARK_FUCHSIA* = (191'u8, 0'u8, 191'u8)
  DARK_MAGENTA* = (191'u8, 0'u8, 143'u8)
  DARK_PINK* = (191'u8, 0'u8, 95'u8)
  DARK_CRIMSON* = (191'u8, 0'u8, 47'u8)

  # darker
  DARKER_RED* = (127'u8, 0'u8, 0'u8)
  DARKER_FLAME* = (127'u8, 31'u8, 0'u8)
  DARKER_ORANGE* = (127'u8, 63'u8, 0'u8)
  DARKER_AMBER* = (127'u8, 95'u8, 0'u8)
  DARKER_YELLOW* = (127'u8, 127'u8, 0'u8)
  DARKER_LIME* = (95'u8, 127'u8, 0'u8)
  DARKER_CHARTREUSE* = (63'u8, 127'u8, 0'u8)
  DARKER_GREEN* = (0'u8, 127'u8, 0'u8)
  DARKER_SEA* = (0'u8, 127'u8, 63'u8)
  DARKER_TURQUOISE* = (0'u8, 127'u8, 95'u8)
  DARKER_CYAN* = (0'u8, 127'u8, 127'u8)
  DARKER_SKY* = (0'u8, 95'u8, 127'u8)
  DARKER_AZURE* = (0'u8, 63'u8, 127'u8)
  DARKER_BLUE* = (0'u8, 0'u8, 127'u8)
  DARKER_HAN* = (31'u8, 0'u8, 127'u8)
  DARKER_VIOLET* = (63'u8, 0'u8, 127'u8)
  DARKER_PURPLE* = (95'u8, 0'u8, 127'u8)
  DARKER_FUCHSIA* = (127'u8, 0'u8, 127'u8)
  DARKER_MAGENTA* = (127'u8, 0'u8, 95'u8)
  DARKER_PINK* = (127'u8, 0'u8, 63'u8)
  DARKER_CRIMSON* = (127'u8, 0'u8, 31'u8)

  # darkest
  DARKEST_RED* = (63'u8, 0'u8, 0'u8)
  DARKEST_FLAME* = (63'u8, 15'u8, 0'u8)
  DARKEST_ORANGE* = (63'u8, 31'u8, 0'u8)
  DARKEST_AMBER* = (63'u8, 47'u8, 0'u8)
  DARKEST_YELLOW* = (63'u8, 63'u8, 0'u8)
  DARKEST_LIME* = (47'u8, 63'u8, 0'u8)
  DARKEST_CHARTREUSE* = (31'u8, 63'u8, 0'u8)
  DARKEST_GREEN* = (0'u8, 63'u8, 0'u8)
  DARKEST_SEA* = (0'u8, 63'u8, 31'u8)
  DARKEST_TURQUOISE* = (0'u8, 63'u8, 47'u8)
  DARKEST_CYAN* = (0'u8, 63'u8, 63'u8)
  DARKEST_SKY* = (0'u8, 47'u8, 63'u8)
  DARKEST_AZURE* = (0'u8, 31'u8, 63'u8)
  DARKEST_BLUE* = (0'u8, 0'u8, 63'u8)
  DARKEST_HAN* = (15'u8, 0'u8, 63'u8)
  DARKEST_VIOLET* = (31'u8, 0'u8, 63'u8)
  DARKEST_PURPLE* = (47'u8, 0'u8, 63'u8)
  DARKEST_FUCHSIA* = (63'u8, 0'u8, 63'u8)
  DARKEST_MAGENTA* = (63'u8, 0'u8, 47'u8)
  DARKEST_PINK* = (63'u8, 0'u8, 31'u8)
  DARKEST_CRIMSON* = (63'u8, 0'u8, 15'u8)

  # metallic
  BRASS* = (191'u8, 151'u8, 96'u8)
  COPPER* = (197'u8, 136'u8, 124'u8)
  GOLD* = (229'u8, 191'u8, 0'u8)
  SILVER* = (203'u8, 203'u8, 203'u8)

  # miscellaneous
  CELADON* = (172'u8, 255'u8, 175'u8)
  PEACH* = (255'u8, 159'u8, 127'u8)

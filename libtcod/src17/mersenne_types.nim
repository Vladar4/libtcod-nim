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

type
  Random* = pointer


type
  Dice* {.bycopy.} = object ##  \
    ##  Dice roll.
    ##
    nbRolls*: cint
    nbFaces*: cint
    multiplier*: cfloat
    addsub*: cfloat


#  PRNG algorithms

type
  RandomAlgo* {.size: sizeof(cint).} = enum
    RNG_MT
    RNG_CMWC

  Distribution* {.size: sizeof(cint).} = enum
    DISTRIBUTION_LINEAR
    DISTRIBUTION_GAUSSIAN
    DISTRIBUTION_GAUSSIAN_RANGE
    DISTRIBUTION_GAUSSIAN_INVERSE
    DISTRIBUTION_GAUSSIAN_RANGE_INVERSE


import strutils

proc repr*(dice: Dice): string =
  result = ""
  if not (dice.multiplier == 1.0):
    result.add(formatFloat(dice.multiplier, ffDefault, 0) & "*")
  result.add(repr(dice.nb_rolls) & "d" & repr(dice.nb_faces))
  if not (dice.addsub == 0.0):
    if 0.0 < dice.addsub:
      result.add("+")
    result.add(formatFloat(dice.addsub, ffDefault, 0))


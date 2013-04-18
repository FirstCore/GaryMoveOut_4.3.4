# Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  Maelstrom/kezan.cpp
  Maelstrom/deepholm.cpp
  Maelstrom/darkmoon_island.cpp
  Maelstrom/lost_isles.cpp
  Maelstrom/tolbarad_peninsula.cpp
  Maelstrom/the_maelstrom.cpp
  Maelstrom/tol_barad.cpp
  Maelstrom/TheStonecore/instance_the_stonecore.cpp
  Maelstrom/TheStonecore/the_stonecore.h
  Maelstrom/TheStonecore/the_stonecore.cpp
  Maelstrom/TheStonecore/boss_azil.cpp
  Maelstrom/TheStonecore/boss_corborus.cpp
  Maelstrom/TheStonecore/boss_ozruk.cpp
  Maelstrom/TheStonecore/boss_slabhide.cpp
  Maelstrom/TheStonecore/trash_stonecore.cpp
)

message("  -> Prepared: Maelstrom")

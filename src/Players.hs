module Players where

import Characters
import RuneDiscs

data Player = Player { name :: String, character :: Character, discs :: DiscSet, damage :: Int }

newPlayer :: String -> Character -> Player
newPlayer n c = Player n c (DiscSet []) 0

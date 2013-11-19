module Actions where

import RuneDiscs

data Turn = Initiating | Mitigating
data Effect = Attack Int | Heal Int | Dodge
data Modifier = Poison Int | Bleed Int | Stun | Confuse | Slow

data Action = Action { name :: String, cost :: DiscSet, turn :: Turn, effects :: [Effect], modifiers :: [Modifier] }

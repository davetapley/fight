module Characters where

import Actions
import RuneDiscs

data Character = Character { name :: String, actions :: [Action], pull :: Int, health :: Int }

instance Show Character where
  show = Characters.name

defaults = [musashi]

musashi = Character "Musashi" [smallCut, bleedCut, quickFoot] 3 10
  where smallCut = Action "Small cut" (DiscSet [(Red, 2)]) Initiating [Attack 4] []
        bleedCut = Action "Bleeding cut" (DiscSet [(Red, 2), (Blue, 2)]) Initiating [Attack 3] [Bleed 2]
        quickFoot = Action "Quick footed" (DiscSet [(Green, 4)]) Mitigating [Dodge] []

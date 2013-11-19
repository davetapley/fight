module Phases where

import Actions hiding (Turn)

data Turn = Initiating | Mitigating Action

data Phase = DiscManagementPhase Int | PoisonPhase | ActionsPhase (Int, Int) Turn | ModifierCleanUp

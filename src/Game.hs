module Game where
    
import qualified Actions as A
import qualified Characters as C
import qualified RuneDiscs as R
import qualified Players as P
import qualified Phases as Ph

import Data.List

data Game = Game { players :: [P.Player], pool :: R.DiscSet, currentPhase :: Ph.Phase }

instance Show Game where
  show = intercalate " vs " . map P.name . players

newGame :: (String, C.Character) -> (String, C.Character) -> Game
newGame p0 p1 = Game players (R.DiscSet []) (Ph.DiscManagementPhase pullRemaining)
  where
    players = [P.newPlayer (fst p0) (snd p0), P.newPlayer (fst p1) (snd p1)]
    pullRemaining = (C.pull . P.character . head) players

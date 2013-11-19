-- | Main entry point to the application.
module Main where

import Game
import Characters
    
-- | The main entry point.
main :: IO ()
main = do
    putStrLn "Enter player 1 name"
    p1Name <- getLine
    putStrLn "Enter player 2 name"
    p2Name <- getLine

    putStrLn . show $ newGame (p1Name, musashi) (p2Name, musashi)

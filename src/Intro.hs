module Intro where

{-
Zapewne niektórzy z Was będą chcieli odświeżyć sobie Haskella. Jeśli nic nie pamiętacie,
zajrzyjcie tutaj: https://github.com/clojurians-warszawa/haskell-workshop/blob/master/HaskellTest/src/Module1.hs
-}

{-|
  The 'perms' function returns a list of all permutations of a list.
  E.g. perms "xy" = ["xy", "yx"] (any order in the result list is correct).
-}
perms :: [a] -> [[a]]
perms = undefined

{- 
  Dla przypomnienia - zapis tekstu w "cudzysłowach" to jedynie lukier syntaktyczny dla list elementów typu Char.
  Sprawdzćie w replu, że:
  * "" == []
  * "xy" == ['x', 'y']
  * :t "xy" to [Char]
  * funkcje fold, map itd. działają ze Stringami
-}


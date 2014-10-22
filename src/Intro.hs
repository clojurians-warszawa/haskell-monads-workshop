module Intro where

{-
Zapewne niektórzy z Was będą chcieli odświeżyć sobie Haskella. Jeśli nic nie pamiętacie,
zajrzyjcie tutaj: https://github.com/clojurians-warszawa/haskell-workshop/blob/master/HaskellTest/src/Module1.hs
-}

-- Zadanie 1:
{-|
  The 'perms' function returns a list of all permutations of a list.
  E.g. perms "xy" = ["xy", "yx"] (any order in the result list is correct as long as the list contains all
  possible permutations and every permutations appears in the list only once).
-}
perms :: [a] -> [[a]]
perms = undefined

{- 
  Dla przypomnienia - zapis tekstu w "cudzysłowach" to jedynie lukier syntaktyczny dla list elementów typu Char.
  Sprawdzćie w replu, że:
  * "" == [],
  * "xy" == ['x', 'y'],
  * :t "xy" to [Char],
  * funkcje fold, map itd. działają ze Stringami.
  
  Przy rozwiązywaniu zadania zastanówcie się:
  * jaki wynik funkcja perms powinna zwrócić dla pustej listy,
  * jaki wynik jest prawidłowy dla listy z jednym elementem.
  
  Nie uznaję rozwiązania perms = permutations;), możecie jednak skorzystać z tej funkcji w testach (pamiętajcie,
  że lista wynikowa może zawierać permutacje w dowolnej kolejności, funkcja testująca powinna to uwzględniać).
  
  Da się to jednak zrobić w dwóch (czytelnych!) linijkach.
  
  Łatwiejsza wersja zadania: przetestujcie funkcję biblioteczną 'permutations' (czy zawiera wszystkie permutacje
  i tylko permutacje). Wystarczą testy na listach typów sortowalnych (a nawet na Intach).
-}

----------------------------------------------------------------------------------------------------------------

-- Przypomnijmy sobie (albo poznajmy) type classes - przydadzą się, żeby zrozumieć, jak działają różne monady:
-- http://www.seas.upenn.edu/~cis194/lectures/05-type-classes.html

-- Zadanie 2:

data MyNum = Zero | One deriving (Show, Eq, Ord)
-- instance Num MyNum where
-- Zaimplementujcie w jakiś rozsądny type class Num, żeby typ MyNum wspierał działania matematyczne, żeby np.
-- można było napisać (bez protestów ze strony kompilatora) Zero + One.
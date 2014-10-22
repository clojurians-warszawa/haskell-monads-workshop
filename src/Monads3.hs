module Monads3 where

-- Krótko o tym, jak robić IO w Haskellu: http://www.haskell.org/tutorial/io.html

{-
  Zadanie 1:
  Pobierzcie plik CSV z danymi dotyczącymi budżetów samorządowych stąd: http://ckan.otwartedane.pl/group/otwarty-budzet
  Napiszcie funkcje, które np.:
  - znajdą najbardziej zadłużoną gminę,
  - obliczą średnie zadłużenie,
  - ...
  Oddzielcie część, która pracuje z plikami (IO) od logiki obliczeń.
-}

{-
  Zadanie 2:
  Napiszcie funkcję primeMinisterAge''', która działa jak primeMinisterAge'', ale wiek oblicza względem
  aktualnego roku, a nie na sztywno wpisanego roku 2014.
-}
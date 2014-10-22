module Monads2 where

import Monads1

{-
Tak wygląda definicja monad:

class  Monad m  where
    -- | Sequentially compose two actions, passing any value produced
    -- by the first as an argument to the second.
    (>>=)       :: forall a b. m a -> (a -> m b) -> m b
    -- | Sequentially compose two actions, discarding any value produced
    -- by the first, like sequencing operators (such as the semicolon)
    -- in imperative languages.
    (>>)        :: forall a b. m a -> m b -> m b
        -- Explicit for-alls so that we know what order to
        -- give type arguments when desugaring

    -- | Inject a value into the monadic type.
    return      :: a -> m a
    -- | Fail with a message.  This operation is not part of the
    -- mathematical definition of a monad, but is invoked on pattern-match
    -- failure in a @do@ expression.
    fail        :: String -> m a

    m >> k      = m >>= \_ -> k
    fail s      = error s
-}

primeMinisterAge' :: Country -> Maybe Integer
primeMinisterAge' c =
  government c >>= \gov ->
  primeMinister gov >>= \pm ->
  birthYear pm >>= \year ->
  Just $ 2014 - year

primeMinisterAge'' :: Country -> Maybe Integer
primeMinisterAge'' c = do
  gov <- government c
  pm <- primeMinister gov
  year <- birthYear pm
  return $ 2014 - year
  
{-
  Zadanie: zaimplementujcie typ Option ze Scali tak, żeby był monadą. Tak, jest to duplikacja Maybe a,
  ale ćwiczenie zapewne będzie fajniejsze, niż gapienie się na kod źródłowy Haskella.
-}
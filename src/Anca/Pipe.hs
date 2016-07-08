module Anca.Pipe where

(|>) :: a -> (a -> b) -> b
x |> f = f x

{-# LANGUAGE              Safe #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Kask.Time
import qualified Kask.Text as Text

test1 :: IO ()
test1 = do
  let coll = [1 .. 10000000] :: [Int]
  let s    = sum coll
  value <- logging "Computations took sthing like " (withMsecs s)
  print value

test2 :: IO ()
test2 = do
  let s = case Text.trimmed "   " of
        Just tr -> Text.trimmedText tr
        Nothing -> "-"
  print s

main :: IO ()
main = do
  test1
  test2

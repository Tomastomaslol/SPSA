{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Lib
import Web.Scotty


routes :: ScottyM ()
routes = do
  get "/hello" $ do
    json getUser

main :: IO ()
main = do
  scotty 9999 routes
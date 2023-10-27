{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Lib
    ( getUser
    ) where

import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics

data User = User { userId :: Int, userName :: String, userType:: String } deriving (Show, Generic)
instance ToJSON User
instance FromJSON User

getUser :: User
getUser =  User { userId = 1, userName = "tomas", userType = "rules" }




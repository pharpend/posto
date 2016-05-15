-- |Main Posto library
module Posto where

import Graphics.Vty

-- |Mostly copied from <the VTY example
-- https://hackage.haskell.org/package/vty-5.5.0/docs/Graphics-Vty.html>
run :: IO ()
run =
  do cfg <- standardIOConfig
     vty <- mkVty cfg
     update vty helloPic
     e <- (nextEvent vty)
     shutdown vty
     print e
  where helloPic = picForImage helloImg
        helloImg = text defAttr "hello, world"

{-# LANGUAGE ForeignFunctionInterface #-}

module Lib where

-- #include <stdio.h>

-- type JoystickAxes = {#type JoystickAxes_t#}

someFunc :: IO ()
someFunc = putStrLn "someFunc"

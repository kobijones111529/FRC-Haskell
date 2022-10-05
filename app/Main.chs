{-# LANGUAGE ForeignFunctionInterface #-}

module Main (main) where

import Lib
import Foreign.C

-- #define EXPORT_FUNC
-- #include <stdlib.h>
-- #include <pthread.h>
-- #include <stdint.h>
-- #include <FRC_NetworkCommunication/FRCComm.h>

-- foreign import ccall "FRC_NetworkCommunication/FRCComm.h FRC_NetworkCommunication_sendConsoleLine" cFunc :: CString -> IO CInt

main :: IO ()
main = someFunc

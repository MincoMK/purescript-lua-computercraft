module Lua.CC where

import Data.Unit (Unit)
import Effect (Effect)

foreign import print ∷ String -> Effect Unit

module Lua.CC.OS where

import Data.Maybe (Maybe(..))
import Effect (Effect)

foreign import version :: Effect String

foreign import getComputerId :: Effect Int

foreign import getComputerLabel_ :: (String -> Maybe String) -> (Maybe String) -> Effect (Maybe String)

getComputerLabel :: Effect (Maybe String)
getComputerLabel = getComputerLabel_ Just Nothing

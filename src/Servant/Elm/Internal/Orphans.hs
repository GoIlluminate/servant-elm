{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

module Servant.Elm.Internal.Orphans where

import Elm.TyRep (ETypeDef, IsElmDefinition, compileElmDef)

-- import           Elm         (ElmDatatype, ElmType, toElmType)
import Servant.API (Headers, NoContent, getResponse)

instance IsElmDefinition ETypeDef where
  compileElmDef = compileElmDef

instance IsElmDefinition NoContent

-- TODO: Generate Elm functions that can handle the response headers. PRs
-- welcome!
instance (IsElmDefinition a) => IsElmDefinition (Headers ls a) where
  compileElmDef = compileElmDef

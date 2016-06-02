module AbsTaneb where

-- Haskell module generated by the BNF converter


newtype RNo = RNo String deriving (Eq,Ord,Show)
data Exp =
   IInt Integer
 | INeg Integer
  deriving (Eq,Ord,Show)

data Stm =
   Seqn Stm Stm
 | Ifblk RNo Stm Stm
 | RAdd Exp RNo
 | Whblk RNo Stm
 | Prnt RNo
 | Prd RNo
  deriving (Eq,Ord,Show)


module Morphir.Reference.Model.Sample.DataDefinition.Persistence.Demand.Loans exposing (..)

import Morphir.Reference.Model.Sample.DataDefinition.Field.Name exposing (Name)
import Morphir.Reference.Model.Sample.Field.Amount exposing (Amount)


type alias Loans =
    { name : Name
    , amount : Amount
    }


type Product
    = Mortgage
    | BankLoans


productFromID : Int -> Maybe Product
productFromID id =
    case id of
        1 ->
            Just Mortgage

        2 ->
            Just BankLoans

        _ ->
            Nothing


loanProduct1 : Product
loanProduct1 =
    Mortgage


loanProduct2 : Product
loanProduct2 =
    BankLoans

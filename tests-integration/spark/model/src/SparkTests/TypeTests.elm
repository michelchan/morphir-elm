module SparkTests.TypeTests exposing (..)

import SparkTests.Types exposing (..)

testBool : List { foo : Bool } -> List { foo : Bool }
testBool source =
    source
        |> List.filter
            (\a ->
                a.foo == False
            )

testFloat : List { foo : Float } -> List { foo : Float }
testFloat source =
    source
        |> List.filter
            (\a ->
                a.foo == 9.99
            )

testInt : List { foo : Int } -> List { foo : Int }
testInt source =
    source
        |> List.filter
            (\a ->
                a.foo == 13
            )

testMaybeBoolConditional : List { foo: Maybe Bool } -> List { foo : Maybe Bool }
testMaybeBoolConditional source =
    source
        |> List.filter
            (\a ->
                a.foo == Just True
            )

testMaybeBoolConditionalNull : List { foo : Maybe Bool } -> List { foo : Maybe Bool }
testMaybeBoolConditionalNull source =
    source
        |> List.filter
            (\a ->
                a.foo == Nothing
            )

testMaybeBoolConditionalNotNull : List { foo : Maybe Bool } -> List { foo : Maybe Bool }
testMaybeBoolConditionalNotNull source =
    source
        |> List.filter
            (\a ->
                a.foo /= Nothing
            )


testMaybeMapDefault : List { foo : Maybe Bool } -> List { foo : Maybe Bool }
testMaybeMapDefault source =
    source
        |> List.filter
            (\item ->
                item.foo
                    |> Maybe.map
                        (\a ->
                            if a == False then
                                True
                            else
                                False
                        )
                    |> Maybe.withDefault False
            )


testString : List { foo : String } -> List { foo : String }
testString source =
    source
        |> List.filter
            (\a ->
                a.foo == "bar"
            )

testEnum : List { title : Title } -> List { title : Title }
testEnum source =
    source
        |> List.filter
            (\a ->
                a.title == ED
            )


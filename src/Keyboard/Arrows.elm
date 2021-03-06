module Keyboard.Arrows exposing (..)

import Set exposing (Set)


type alias Arrows =
    { x : Int, y : Int }


init : Arrows
init =
    { x = 0, y = 0 }


boolToInt : Bool -> Int
boolToInt bool =
    if bool then
        1
    else
        0


determineArrows : Set Int -> Arrows
determineArrows keys =
    let
        toInt key =
            keys
                |> Set.member key
                |> boolToInt

        x =
            (toInt 39) - (toInt 37)

        y =
            (toInt 38) - (toInt 40)
    in
        { x = x, y = y }


determineWasd : Set Int -> Arrows
determineWasd keys =
    let
        toInt key =
            keys
                |> Set.member key
                |> boolToInt

        x =
            (toInt 68) - (toInt 65)

        y =
            (toInt 87) - (toInt 83)
    in
        { x = x, y = y }

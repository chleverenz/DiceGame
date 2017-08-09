module DiceGame exposing (..)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main = 
    Html.beginnerProgram
    { model = mymodel
    , view = view
    , update = update
    }

type Msg = Increment | Decrement

type alias Hannes =
  {
  a : String
  , b : Int
  }

mymodel : Hannes
mymodel = {
  a = ""
  , b = 42
  }

update msg model =
  case msg of
    Increment ->
      {model | b = model.b + 2}

    Decrement ->
      {model | b = model.b - 2}

view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model.b) ]
    , button [ onClick Increment ] [ text "+" ]
    ]
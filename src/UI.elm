module UI exposing (h1, layout)

import Gen.Route as Route exposing (Route)
import Html exposing (Html)
import Html.Attributes as Attr


layout : List (Html msg) -> List (Html msg)
layout children =
    let
        viewLink label route =
            Html.a [ Attr.href (Route.toHref route) ] [ Html.text label ]
    in
    [ Html.div [ Attr.class "container" ]
        [ Html.header [ Attr.class "navbar" ]
            [ viewLink "Home" Route.Home_
            , viewLink "Static" Route.Static
            , viewLink "Sandbox" Route.Sandbox
            , Html.div [ Attr.class "splitter" ] []
            , viewLink "Dynamic: Apple" (Route.Dynamic__Name_ { name = "apple" })
            , viewLink "Dynamic: Banana" (Route.Dynamic__Name_ { name = "banana" })
            ]
        , Html.main_ [] children
        ]
    ]


h1 : String -> Html msg
h1 label =
    Html.h1 [] [ Html.text label ]

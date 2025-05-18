module Pages.Sandbox exposing (page)

import Gen.Params.Sandbox exposing (Params)
import Html
import Page exposing (Page)
import Request
import Shared
import UI
import View exposing (View)


page : Shared.Model -> Request.With Params -> Page
page shared req =
    Page.static
        { view = view
        }


view : View msg
view =
    { title = "Sandbox"
    , body = UI.layout [ Html.text "Sandbox" ]
    }

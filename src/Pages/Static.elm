module Pages.Static exposing (page)

import Gen.Params.Static exposing (Params)
import Page exposing (Page)
import Request
import Shared
import UI
import View exposing (View)
import Html


page : Shared.Model -> Request.With Params -> Page
page shared req =
    Page.static
        { view = view
        }


view : View msg
view =
    { title = "Static"
    , body = UI.layout [ Html.text "Static" ]
    }

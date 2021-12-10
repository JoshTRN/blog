module Pages.Home_ exposing (page)

import Browser
import Html exposing (Html)
import Page exposing (Page)
import Request exposing (Request)
import Shared
import UI


page : Shared.Model -> Request -> Page
page _ _ =
    Page.static
        { view = toBrowserDocument view
        }


type alias View msg =
    { title : String
    , element : Html msg
    }


view : View msg
view =
    { title = "Homepage"
    , element = UI.uiRow
    }


toBrowserDocument : View msg -> Browser.Document msg
toBrowserDocument thing =
    { title = thing.title
    , body = [ thing.element ]
    }

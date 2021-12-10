module Pages.Resume exposing (page)

import Gen.Params.Resume exposing (Params)
import Page exposing (Page)
import Request
import Shared
import View exposing (View)


page : Shared.Model -> Request.With Params -> Page
page shared req =
    Page.static
        { view = view
        }


view : View msg
view =
    View.placeholder "Resume"

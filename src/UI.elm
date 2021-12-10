module UI exposing (uiRow)

import Element exposing (Element, centerX, centerY, clip, column, el, fill, height, image, link, px, row, spacing, text, width)
import Element.Border as Border
import Gen.Route as Route exposing (Route)
import Html exposing (Html)


uiRow : Html msg
uiRow =
    Element.layout [ width fill, height fill ]
        main1


main1 : Element msg
main1 =
    row [ centerX, centerY, spacing 200 ]
        [ profilePhoto
        , navLinks
        ]


profilePhoto : Element msg
profilePhoto =
    el
        [ width (px 256)
        , height fill
        , Border.rounded 50
        , clip
        ]
        (image [ centerX ] { src = "images/BVjRI.jpg", description = "" })


navLinks : Element msg
navLinks =
    column
        [ width fill, spacing 20 ]
        [ viewLink "Blog" Route.Blog
        , viewLink "Resume" Route.Resume
        , viewLink "Projects" Route.Projects
        ]


viewLink : String -> Route -> Element msg
viewLink label route =
    link [] { url = Route.toHref route, label = text label }

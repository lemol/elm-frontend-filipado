module Main exposing (main)

import Ant.Icon as Icon
import Ant.Icons as Icons
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html exposing (Html)
import Illustrations exposing (illustration1)


main : Html msg
main =
    layout
        []
        (row
            [ height fill
            , width fill
            ]
            [ menuBar
            , mainSection
            , rightSection
            ]
        )


menuBar : Element msg
menuBar =
    el
        [ width (px 123)
        , height fill
        , Background.color <| rgb255 0xF6 0xF5 0xFA
        ]
        (column
            [ centerX
            , centerY
            , spacing 128
            ]
            [ Icons.gitlabFilled
                [ Icon.width 42
                , Icon.height 42
                , Icon.fill (rgb255 0x62 0x00 0xFF)
                ]
                |> el [ centerX ]
            , column
                [ centerX
                , spacing 48
                ]
                [ menuItem Icons.homeFilled True
                , menuItem Icons.bellFilled False
                , menuItem Icons.calendarFilled False
                , menuItem Icons.fileFilled False
                , menuItem Icons.pieChartFilled False
                , menuItem Icons.wechatFilled False
                ]
            , el
                [ centerX
                , centerY
                , width (px 52)
                , height (px 52)
                , inFront
                    (el
                        [ Background.color (rgb255 0xFF 0x01 0x00)
                        , Border.width 2
                        , Border.rounded 8
                        , Border.color (rgb255 0xFF 0xFF 0xFF)
                        , Font.size 10
                        , Font.color (rgb255 0xFF 0xFF 0xFF)
                        , paddingXY 6 4
                        , moveLeft 2
                        , moveUp 2
                        ]
                        (text "5")
                    )
                ]
                (image
                    [ centerX
                    , centerY
                    , clip
                    , Border.color (rgb255 0xFF 0xFF 0xFF)
                    , Border.width 4
                    , Border.rounded 50
                    ]
                    { src = "https://api.adorable.io/avatars/48/filipado.png"
                    , description = "filipado"
                    }
                )
            ]
        )


menuItem : (List (Icon.Attribute msg) -> Element msg) -> Bool -> Element msg
menuItem icon isActive =
    el
        [ centerX
        , centerY
        , width (px 48)
        , height (px 48)
        , if isActive then
            Background.color (rgb255 0xE9 0xE0 0xFA)

          else
            Background.color (rgba255 0xE9 0xE0 0xFA 0)
        , Border.rounded 50
        ]
        (icon
            [ Icon.fill (rgb255 0xB0 0xBE 0xC8)
            , Icon.width 20
            , Icon.height 20
            ]
            |> el [ centerX, centerY ]
        )


mainSection : Element msg
mainSection =
    column
        [ width fill
        , height fill
        , paddingXY 62 66
        , spacing 64
        ]
        [ -- TOP
          row
            [ width fill
            ]
            [ row
                [ Background.color (rgb255 0xF6 0xF5 0xFA)
                , Border.rounded 46
                , Font.size 16
                , Font.color (rgb255 0xAC 0xB6 0xBE)
                , padding 16
                , spacing 8
                , width (px 600)
                , height (px 46)
                ]
                [ Icons.searchOutlined
                    [ Icon.width 18
                    ]
                , el
                    []
                    (text "Type in to Search...")
                ]
            , el
                [ alignRight
                , Font.color (rgb255 0xAC 0xB6 0xBE)
                ]
                (Icons.settingFilled
                    [ Icon.width 18 ]
                )
            ]

        -- MAIN
        , column
            [ spacing 64
            , width fill
            ]
            [ column
                [ spacing 12 ]
                [ row
                    [ spacing 8 ]
                    [ el
                        [ Font.bold
                        , Font.size 32
                        ]
                        (text "Welcome")
                    , el
                        [ Font.size 32 ]
                        (text "John")
                    ]
                , el
                    [ Font.size 16
                    , Font.color (rgb255 0xAC 0xB6 0xBE)
                    ]
                    (text "QCRM activity dashboard")
                ]
            , row
                [ width fill
                , spacing 48
                ]
                [ column
                    [ spacing 24
                    ]
                    [ illustration1
                        { width = 320 }
                        |> el []
                    , column
                        [ centerX
                        , Font.size 14
                        , Font.color (rgb255 0xAC 0xB6 0xBE)
                        ]
                        [ text "Oportunity pipeline"
                            |> el [ centerX ]
                        , text "by sales stage"
                            |> el [ centerX ]
                        ]
                    ]
                , column
                    [ alignRight
                    , height fill
                    , spacing 24
                    ]
                    [ row
                        [ spacing 24
                        ]
                        [ column
                            [ width (px 184)
                            , height (px 184)
                            , spacing 24
                            , Border.rounded 24
                            , Background.color (rgb255 0xFF 0xF8 0x96)
                            ]
                            [ el
                                [ centerX
                                , centerY
                                ]
                                (text "25")
                                |> el
                                    [ centerX
                                    , centerY
                                    , width (px 78)
                                    , height (px 78)
                                    , Font.semiBold
                                    , Font.color (rgb255 0xEE 0x9D 0x30)
                                    , Background.color (rgb255 0xFF 0xFF 0xFF)
                                    , Border.rounded 50
                                    ]
                            , text "Open Leads"
                                |> el
                                    [ centerX
                                    , centerY
                                    , Font.size 16
                                    , Font.color (rgb255 0xF5 0xB1 0x32)
                                    ]
                            ]
                        , column
                            [ width (px 184)
                            , height (px 184)
                            , spacing 24
                            , Border.rounded 24
                            , Background.color (rgb255 0xF6 0xF5 0xFA)
                            ]
                            [ el
                                [ centerX
                                , centerY
                                ]
                                (text "7")
                                |> el
                                    [ centerX
                                    , centerY
                                    , width (px 78)
                                    , height (px 78)
                                    , Font.semiBold
                                    , Font.color (rgb255 0x95 0xA6 0xB0)
                                    , Background.color (rgb255 0xFF 0xFF 0xFF)
                                    , Border.rounded 50
                                    ]
                            , text "Opportunities"
                                |> el
                                    [ centerX
                                    , centerY
                                    , Font.size 16
                                    , Font.color (rgb255 0x95 0xA6 0xB0)
                                    ]
                            ]
                        ]
                    , column
                        [ width fill
                        , height fill
                        , spacing 24
                        , Border.rounded 24
                        , Background.color (rgb255 0xF6 0xF5 0xFA)
                        ]
                        [ el
                            [ centerX
                            , centerY
                            ]
                            (text "7")
                            |> el
                                [ centerX
                                , centerY
                                , width (px 78)
                                , height (px 78)
                                , Font.semiBold
                                , Font.color (rgb255 0x95 0xA6 0xB0)
                                , Background.color (rgb255 0xFF 0xFF 0xFF)
                                , Border.rounded 50
                                ]
                        , text "Opportunities"
                            |> el
                                [ centerX
                                , centerY
                                , Font.size 16
                                , Font.color (rgb255 0x95 0xA6 0xB0)
                                ]
                        ]
                    ]
                ]
            ]
        ]


rightSection : Element msg
rightSection =
    column
        [ width (px 310)
        , height fill
        , Background.color <| rgb255 0xF6 0xF5 0xFA
        , paddingXY 32 66
        ]
        [ row
            [ width fill ]
            [ el
                [ Font.size 16
                , Font.semiBold
                , Font.color (rgb255 0xAC 0xB6 0xBE)
                ]
                (text "Leads")
            , el
                [ alignRight
                , width (px 28)
                , height (px 28)
                , Font.size 16
                , Font.color (rgb255 0xFF 0xFF 0xFF)
                , Background.color (rgb255 0xFF 0x94 0x00)
                , Border.rounded 6
                ]
                (Icons.plusOutlined
                    [ Icon.width 16 ]
                    |> el [ centerX, centerY ]
                )
            ]
        ]

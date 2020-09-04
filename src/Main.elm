module Main exposing (main)

import Ant.Icon as Icon
import Ant.Icons as Icons
import Colors
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html exposing (Html)
import Illustrations exposing (illustration1)


main : Html msg
main =
    layout [] view


view : Element msg
view =
    row
        [ height fill
        , width fill
        ]
        [ menuBar
        , mainSection
        , rightSection
        ]


menuBar : Element msg
menuBar =
    el
        [ width (px 123)
        , height fill
        , Background.color Colors.gray1
        ]
        (column
            [ centerX
            , centerY
            , spacing 128
            ]
            [ Icons.gitlabFilled
                [ Icon.width 42
                , Icon.height 42
                , Icon.fill Colors.logo
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
                        [ Background.color Colors.red1
                        , Border.width 2
                        , Border.rounded 8
                        , Border.color Colors.white
                        , Font.size 10
                        , Font.color Colors.white
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
                    , Border.color Colors.white
                    , Border.width 4
                    , Border.rounded 50
                    ]
                    { src = "https://picsum.photos/48/48?random=1"
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
            Background.color Colors.purple1

          else
            Background.color Colors.transparent
        , Border.rounded 50
        ]
        (icon
            [ Icon.fill Colors.gray2
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
                [ Background.color Colors.gray1
                , Border.rounded 46
                , Font.size 16
                , Font.color Colors.gray3
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
                , Font.color Colors.gray3
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
                    , Font.color Colors.gray3
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
                        , Font.color Colors.gray3
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
                            , Background.color Colors.yellow1
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
                                    , Font.color Colors.yellow2
                                    , Background.color Colors.white
                                    , Border.rounded 50
                                    ]
                            , text "Open Leads"
                                |> el
                                    [ centerX
                                    , centerY
                                    , Font.size 16
                                    , Font.semiBold
                                    , Font.color Colors.yellow3
                                    ]
                            ]
                        , column
                            [ width (px 184)
                            , height (px 184)
                            , spacing 24
                            , Border.rounded 24
                            , Background.color Colors.gray1
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
                                    , Font.color Colors.gray4
                                    , Background.color Colors.white
                                    , Border.rounded 50
                                    ]
                            , text "Opportunities"
                                |> el
                                    [ centerX
                                    , centerY
                                    , Font.size 16
                                    , Font.semiBold
                                    , Font.color Colors.gray4
                                    ]
                            ]
                        ]
                    , column
                        [ width fill
                        , height fill
                        , spacing 24
                        , Border.rounded 24
                        , Background.color Colors.gray1
                        , padding 32
                        ]
                        [ text "Goal Progress"
                            |> el
                                [ Font.size 16
                                , Font.semiBold
                                , Font.color Colors.gray4
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
        , Background.color <| Colors.gray1
        , paddingXY 32 66
        , spacing 32
        ]
        [ row
            [ width fill ]
            [ el
                [ Font.size 16
                , Font.semiBold
                , Font.color Colors.gray3
                ]
                (text "Leads")
            , el
                [ alignRight
                , width (px 28)
                , height (px 28)
                , Font.size 16
                , Font.color Colors.white
                , Background.color Colors.gray5
                , Border.rounded 6
                ]
                (Icons.plusOutlined
                    [ Icon.width 16 ]
                    |> el [ centerX, centerY ]
                )
            ]
        ]

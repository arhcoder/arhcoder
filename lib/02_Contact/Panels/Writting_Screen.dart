import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/Widgets/titular.dart';

class WrittingScreen extends StatelessWidget
{
    ScrollController scrollController = ScrollController();

    @override
    Widget build(BuildContext context)
    {
        // Medidas de la pantalla //
        double deviceWidth = MediaQuery.of(context).size.width;

        // Tipos de dispositivos //
        bool desktop;
        bool tablet;
        // bool mobile;

        // Desktop //
        if(deviceWidth > Responsive.landscapeBreakpoint)
        {
            desktop = true;
            tablet = false;
            // mobile = false;
        }
        // Tablet //
        else if(deviceWidth <= Responsive.landscapeBreakpoint
        && deviceWidth > Responsive.portraitBreakpoint)
        {
            tablet = true;
            desktop = false;
            // mobile = false;
        }
        // Mobile //
        else if(deviceWidth <= Responsive.portraitBreakpoint)
        {
            // mobile = true;
            desktop = false;
            tablet = false;
        }

        return Panel
        (
            title: S.current.writing_screen,
            cardHeight: 50,
            largeCards: true,

            cards:
            [
                GridView
                (
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                    (
                        crossAxisCount: 2,
                        mainAxisExtent: 50,

                        crossAxisSpacing:
                        desktop || tablet? Constants.marginInterior / 2
                        : Constants.marginInterior / 2,

                        mainAxisSpacing:
                        desktop || tablet? Constants.marginInterior / 2
                        : Constants.marginInterior / 2
                    ),
                    
                    children:
                    [
                        TextField
                        (
                            decoration: InputDecoration
                            (
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person),
                                hintText: S.current.first_name,
                                labelText: S.current.first_name
                            )
                        ),
                        TextField
                        (
                            decoration: InputDecoration
                            (
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person),
                                hintText: S.current.first_name,
                                labelText: S.current.first_name
                            )
                        )
                    ]
                ),

                GridView
                (
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                    (
                        crossAxisCount: 2,
                        mainAxisExtent: 50,

                        crossAxisSpacing:
                        desktop || tablet? Constants.marginInterior / 2
                        : Constants.marginInterior / 2,

                        mainAxisSpacing:
                        desktop || tablet? Constants.marginInterior / 2
                        : Constants.marginInterior / 2
                    ),
                    
                    children:
                    [
                        TextField
                        (
                            decoration: InputDecoration
                            (
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.email),
                                hintText: S.current.email,
                                labelText: S.current.email
                            )
                        ),
                        TextField
                        (
                            decoration: InputDecoration
                            (
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.subject),
                                hintText: "Asunto",
                                labelText: "Asunto"
                            )
                        )
                    ]
                ),

                GridView
                (
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                    (
                        crossAxisCount: 1,
                        mainAxisExtent: 400
                    ),
                    
                    children:
                    [
                        Container
                        (
                            height: 400,
                            child: TextField
                            (
                                decoration: InputDecoration
                                (
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.message),
                                    hintText: S.current.message,
                                    labelText: S.current.message,
                                ),
                                maxLines: 4
                            )
                        )
                    ]
                )
            ]
        );
    }
}
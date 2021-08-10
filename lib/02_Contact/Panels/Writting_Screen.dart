import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/Widgets/titular.dart';

class WrittingScreen extends StatelessWidget
{
    final double textFieldHight = 60;
    

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

        // Margen horizontal de las cartas según la pantalla //
        double horizontalMargin =
        desktop || tablet ? Constants.blockNavigationButtonSpace
        : Constants.padding * 1.2;

        return Container
        (
            child: Column
            (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children:
                [
                    // Titular //
                    Container
                    (
                        width:
                        desktop ? Constants.webBlockWidth - (Constants.blockNavigationButtonSpace * 2):
                        tablet ? deviceWidth * 0.90 - (Constants.blockNavigationButtonSpace * 2):
                        deviceWidth * 0.90,

                        child: Titular(title: S.current.writing_screen)
                    ),
                    
                    SizedBox
                    (
                        height:
                        desktop? Constants.marginExterior
                        : tablet? Constants.marginExterior / 2
                        : Constants.marginExterior / 3
                    ),
                    Expanded
                    (
                        child: Container
                        (
                            width: Constants.webBlockWidth,

                            padding: EdgeInsets.symmetric(horizontal: horizontalMargin),

                            child: Scrollbar
                            (
                                controller: scrollController,
                                child: ListView
                                (
                                    controller: scrollController,
                                    children:
                                    [
                                        
                                        Row
                                        (
                                            children:
                                            [
                                                Container
                                                (
                                                    height: textFieldHight,

                                                    width:
                                                    desktop ? (Constants.webBlockWidth - (Constants.blockNavigationButtonSpace * 2)) / 2 - Constants.marginInterior
                                                    : tablet ? deviceWidth * 0.90 - (Constants.blockNavigationButtonSpace * 2)
                                                    : deviceWidth * 0.90,

                                                    child: TextField
                                                    (
                                                        decoration: InputDecoration
                                                        (
                                                            border: OutlineInputBorder(),
                                                            prefixIcon: Icon(Icons.person),
                                                            hintText: S.current.first_name,
                                                            labelText: S.current.first_name
                                                        )
                                                    )
                                                ),
                                                SizedBox(width: Constants.marginInterior),
                                                Container
                                                (
                                                    height: textFieldHight,

                                                    width:
                                                    desktop ? (Constants.webBlockWidth - (Constants.blockNavigationButtonSpace * 2)) / 2 - Constants.marginInterior
                                                    : tablet ? deviceWidth * 0.90 - (Constants.blockNavigationButtonSpace * 2)
                                                    : deviceWidth * 0.90,

                                                    child: TextField
                                                    (
                                                        decoration: InputDecoration
                                                        (
                                                            border: OutlineInputBorder(),
                                                            prefixIcon: Icon(Icons.person),
                                                            hintText: S.current.first_name,
                                                            labelText: S.current.first_name
                                                        )
                                                    )
                                                )
                                            ]
                                        )
                                    ]
                                )
                            )
                        )
                    )
                ]
            )
        );
    }
}




/*
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
*/
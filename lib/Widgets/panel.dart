import 'package:flutter/material.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/titular.dart';

class Panel extends StatelessWidget
{
    final String title;
    final double cardHeight;
    final bool largeCards;

    final List <Widget> cards;

    Panel({Key, key, this.title, this.cardHeight, this.largeCards, this.cards});

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

        // Columnas según la pantalla //
        int columns = desktop ? 2 : 1;

        // Margen horizontal de las cartas según la pantalla //
        double cardsHorizontalMargin =
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

                        child: Titular(title: this.title)
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

                            child: Scrollbar
                            (
                                controller: scrollController,
                                isAlwaysShown: true,
                                showTrackOnHover: false,
                                thickness: 10,
                                hoverThickness: 12,

                                child: GridView
                                (
                                    controller: scrollController,
                                    
                                    padding: EdgeInsets.only(
                                        left: cardsHorizontalMargin,
                                        right: cardsHorizontalMargin,
                                        bottom: Constants.padding * 1.5,
                                    ),
                                    
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                                    (
                                        crossAxisCount: largeCards? 1: columns,
                                        mainAxisExtent: this.cardHeight,

                                        crossAxisSpacing:
                                        desktop || tablet? Constants.marginInterior
                                        : Constants.marginInterior / 2,

                                        mainAxisSpacing:
                                        desktop || tablet? Constants.marginInterior
                                        : Constants.marginInterior / 2
                                    ),

                                    children: cards
                                )
                            )
                        )
                    )
                ]
            )
        );
    }
}
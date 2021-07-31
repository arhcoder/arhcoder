import 'package:flutter/material.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/titular.dart';

class Panel extends StatelessWidget
{
    String title;
    int columns = 2;
    double cardHeight;
    List <Widget> cards = [];

    Panel({Key, key, this.title, this.columns, this.cards, this.cardHeight});

    @override
    Widget build(BuildContext context)
    {
        // Medidas de la pantalla //
        double deviceWidth = MediaQuery.of(context).size.width;
        double deviceHeight = MediaQuery.of(context).size.height;

        // Pantalla //
        bool landscape = true;
        bool portrait = false;

        // Landscape //
        if(deviceWidth > deviceHeight)
        {
            landscape = true;
            portrait = false;
        }
        // Portrait //
        else if(deviceWidth <= deviceHeight)
        {
            portrait = true;
            landscape = false;
        }

        double cardsHorizontalMargin =
        landscape ? Constants.blockNavigationButtonSpace
        : 8.0;
        
        return Container
        (
            child: Column
            (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children:
                [
                    Container
                    (
                        // Si la pantalla es menor al tamaño mínimo del bloque en web
                        // menos el espacio de los botones, usa el 90% de la pantalla...
                        width: deviceWidth >= Constants.webBlockWidth ?
                        Constants.webBlockWidth - (Constants.blockNavigationButtonSpace * 2)
                        :
                        deviceWidth * 0.9,

                        child: Titular(title: this.title)
                    ),
                    
                    SizedBox(height: Constants.marginInterior),
                    Expanded
                    (
                        child: Container
                        (
                            width: Constants.webBlockWidth,
                            child: GridView
                            (
                                padding: EdgeInsets.only(
                                    left: cardsHorizontalMargin,
                                    right: cardsHorizontalMargin,
                                    bottom: Constants.padding * 1.5,
                                ),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                                (
                                    crossAxisCount: columns,
                                    mainAxisExtent: this.cardHeight,
                                    crossAxisSpacing: Constants.marginInterior,
                                    mainAxisSpacing: Constants.marginInterior
                                ),
                                children: cards
                            )
                        )
                    )
                ]
            )
        );
    }
}
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
                        width: MediaQuery.of(context).size.width >= Constants.webBlockWidth ?
                        Constants.webBlockWidth - (Constants.blockNavigationButtonSpace * 2)
                        :
                        MediaQuery.of(context).size.width * 0.9 - (Constants.blockNavigationButtonSpace * 2),

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
                                    left: Constants.blockNavigationButtonSpace,
                                    right: Constants.blockNavigationButtonSpace,
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
import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/titular.dart';

import 'package:arhcoder/01_Projects/Widgets/card_front.dart';

class NormalProjects extends StatelessWidget
{
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
                    Titular(title: S.current.normal_projects),
                    SizedBox(height: Constants.marginInterior),
                    Expanded
                    (
                        child: GridView
                        (
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                            (
                                crossAxisCount: 2,
                                mainAxisExtent: 144,
                                crossAxisSpacing: 20.0,
                                mainAxisSpacing: 20.0
                            ),
                            children:
                            [
                                CardFront
                                (
                                    icon: "assets/images/prueba.png",
                                    text: "Software",
                                    width: 400.0,
                                    height: 100.0,
                                ),
                                CardFront
                                (
                                    icon: "assets/images/prueba.png",
                                    text: "Software",
                                    width: 400.0,
                                    height: 100.0,
                                ),
                                CardFront
                                (
                                    icon: "assets/images/prueba.png",
                                    text: "Software",
                                    width: 400.0,
                                    height: 100.0,
                                ),
                                CardFront
                                (
                                    icon: "assets/images/prueba.png",
                                    text: "Software",
                                    width: 400.0,
                                    height: 100.0,
                                ),
                                CardFront
                                (
                                    icon: "assets/images/prueba.png",
                                    text: "Software",
                                    width: 400.0,
                                    height: 100.0,
                                ),
                                CardFront
                                (
                                    icon: "assets/images/prueba.png",
                                    text: "Software",
                                    width: 400.0,
                                    height: 100.0,
                                ),
                            ]
                        )
                    )
                    
                ]
            )
        );
    }
}
import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'dart:math' as math;

class Block extends StatelessWidget
{
    final Widget content;
    final VoidCallback backMethod;
    final VoidCallback nextMethod;

    final bool hideBackButton;
    final bool hideNextButton;

    Block({Key key, this.content, this.backMethod, this.nextMethod,
    this.hideBackButton, this.hideNextButton}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            width: Constants.webBlockWidth,
            child: Row
            (
                children:
                [
                    Container
                    (
                        width: Constants.blockNavigationButtonSpace,
                        margin: EdgeInsets.symmetric(vertical: Constants.marginExterior),
                        alignment: Alignment.topLeft,
                        child: !hideBackButton?
                        FloatingActionButton
                        (
                            backgroundColor: AppColors.tertiary,
                            tooltip: "Anterior",
                            onPressed: backMethod,
                            child: Icon
                            (
                                Icons.arrow_back
                            )
                        )
                        : null
                    ),
                    Expanded
                    (
                        child: Column
                        (
                            children:
                            [
                                SizedBox(height: Constants.marginExterior),

                                Expanded(child: content),

                                SizedBox(height: Constants.marginExterior)
                            ]
                        )
                    ),
                    Container
                    (
                        width: Constants.blockNavigationButtonSpace,
                        margin: EdgeInsets.symmetric(vertical: Constants.marginExterior),
                        alignment: Alignment.topRight,
                        child: !hideNextButton ?
                        FloatingActionButton
                        (
                            backgroundColor: AppColors.tertiary,
                            tooltip: "Siguiente",
                            onPressed: nextMethod,
                            child: Transform
                            (
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child: Icon(Icons.arrow_back)
                            )
                        )
                        : null
                    )
                ]
            )
        );
    }
}
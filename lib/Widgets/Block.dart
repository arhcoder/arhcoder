import 'package:flutter/material.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'panel_button.dart';

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
            // Si la pantalla es menor al tamaño mínimo del bloque en web,
            // usa el 90% de la pantalla...
            width: MediaQuery.of(context).size.width >= Constants.webBlockWidth ?
            Constants.webBlockWidth
            :
            MediaQuery.of(context).size.width * 0.9
            ,
            child: Row
            (
                children:
                [
                    Container
                    (
                        width: Constants.blockNavigationButtonSpace,
                        margin: EdgeInsets.symmetric(vertical: Constants.marginExterior),
                        alignment: Alignment.topLeft,
                        child: !hideBackButton ?
                        PanelButton
                        (
                            method: backMethod,
                            isBackButton: true,
                        )
                        : null
                    ),
                    Expanded
                    (
                        child: OverflowBox
                        (
                            // Si la pantalla es menor al tamaño mínimo del bloque en web,
                            // usa el 90% de la pantalla...
                            maxWidth: MediaQuery.of(context).size.width >= Constants.webBlockWidth ?
                            Constants.webBlockWidth
                            :
                            MediaQuery.of(context).size.width * 0.9
                            ,
                            child: Column
                            (
                                children:
                                [
                                    SizedBox(height: Constants.marginExterior),

                                    Expanded(child: content),

                                    SizedBox(height: Constants.marginExterior)
                                ]
                            ),
                        )
                    ),
                    Container
                    (
                        width: Constants.blockNavigationButtonSpace,
                        margin: EdgeInsets.symmetric(vertical: Constants.marginExterior),
                        alignment: Alignment.topRight,
                        child: !hideNextButton ?
                        PanelButton
                        (
                            method: nextMethod,
                            isBackButton: false
                        )
                        : null
                    )
                ]
            )
        );
    }
}
import 'package:flutter/material.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'panel_button.dart';

class Block extends StatelessWidget
{
    // Atributos //
    final Widget content;
    final VoidCallback backMethod;
    final VoidCallback nextMethod;

    final bool hideBackButton;
    final bool hideNextButton;

    // Constructor //
    Block({Key key, this.content, this.backMethod, this.nextMethod,
    this.hideBackButton, this.hideNextButton}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        // Medidas de la pantalla //
        double deviceWidth = MediaQuery.of(context).size.width;
        double deviceHeight = MediaQuery.of(context).size.height;

        // Botones de navegación a los costados //
        bool landscape = true;
        bool tablet = true;
        bool portrait = true;

        // Landscape //
        if(deviceWidth > deviceHeight)
        {
            landscape = true;
        }
        // Portrait //
        else if(deviceWidth <= deviceHeight)
        {
            landscape = false;
        }

        // Botones de navegación //
        Widget backButton = !hideBackButton
        ?
        PanelButton
        (
            method: backMethod,
            isBackButton: true,
        )
        :
        Container(width: 0, height: 0);

        Widget nextButton = !hideNextButton
        ?
        PanelButton
        (
            method: nextMethod,
            isBackButton: false
        )
        :
        Container(width: 0, height: 0);

        // BLOQUE //
        return Container
        (
            // Si la pantalla es menor al tamaño mínimo del bloque en web,
            // usa el 90% de la pantalla...
            width: deviceWidth > Constants.webBlockWidth ?
            Constants.webBlockWidth
            :
            deviceWidth * 0.9,

            child: Row
            (
                children:
                [
                    // Espacio del primer botón //
                    landscape? Container
                    (
                        width: Constants.blockNavigationButtonSpace,
                        margin: EdgeInsets.symmetric(vertical: Constants.marginExterior),
                        alignment: Alignment.topLeft,
                        child: backButton
                    )
                    :
                    Container(width: 0, height: 0),

                    // Caja central de contenido //
                    Expanded
                    (
                        // Sobrepasa su ancho natural y queda por encima de los espacios de botones //
                        child: OverflowBox
                        (
                            // Si la pantalla es menor al tamaño mínimo del bloque en web,
                            // usa el 90% de la pantalla...
                            maxWidth: deviceWidth > Constants.webBlockWidth ?
                            Constants.webBlockWidth
                            :
                            deviceWidth * 0.9,

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

                    // Espacio del segundo botón //
                    landscape? Container
                    (
                        width: Constants.blockNavigationButtonSpace,
                        margin: EdgeInsets.symmetric(vertical: Constants.marginExterior),
                        alignment: Alignment.topRight,
                        child: nextButton
                    )
                    :
                    Container(width: 0, height: 0),
                ]
            )
        );
    }
}
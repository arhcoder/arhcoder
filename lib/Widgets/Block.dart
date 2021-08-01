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

        // Tipos de dispositivos //
        bool desktop = true;
        bool tablet = true;
        bool mobile = true;

        // Desktop //
        if(deviceWidth > Responsive.landscapeBreakpoint)
        {
            desktop = true;
            tablet = false;
            mobile = false;
        }
        // Tablet //
        else if(deviceWidth <= Responsive.landscapeBreakpoint
        && deviceWidth > Responsive.portraitBreakpoint)
        {
            tablet = true;
            desktop = false;
            mobile = false;
        }
        // Mobile //
        else if(deviceWidth <= Responsive.portraitBreakpoint)
        {
            mobile = true;
            desktop = false;
            tablet = false;
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

        return Container
        (
            // Si la pantalla es menor al tamaño mínimo del bloque en web,
            // usa el 90% de la pantalla...
            width: desktop
            ? Constants.webBlockWidth
            : deviceWidth * 0.90,

            child: Row
            (
                children:
                [
                    // Espacio del primer botón //
                    desktop || tablet ? Container
                    (
                        width: Constants.blockNavigationButtonSpace,
                        margin: EdgeInsets.symmetric(vertical: Constants.marginExterior),
                        alignment: Alignment.topLeft,
                        child: backButton
                    )
                    : Container(width: 0, height: 0),

                    // Caja central de contenido //
                    Expanded
                    (
                        // Sobrepasa su ancho natural y queda por encima de los espacios de botones //
                        child: OverflowBox
                        (
                            // Si la pantalla es menor al tamaño mínimo del bloque en web,
                            // usa el 90% de la pantalla...
                            maxWidth: desktop
                            ? Constants.webBlockWidth
                            : deviceWidth * 0.90,

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
                    desktop || tablet ? Container
                    (
                        width: Constants.blockNavigationButtonSpace,
                        margin: EdgeInsets.symmetric(vertical: Constants.marginExterior),
                        alignment: Alignment.topRight,
                        child: nextButton
                    )
                    : Container(width: 0, height: 0),
                ]
            )
        );
    }
}
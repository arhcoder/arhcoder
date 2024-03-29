import 'package:flutter/material.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'pbutton.dart';

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
                        margin: EdgeInsets.symmetric(
                            vertical:
                            desktop? Constants.marginExterior
                            : tablet? Constants.marginExterior / 2
                            : Constants.marginExterior / 3
                        ),
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
                            maxWidth: desktop
                            ? Constants.webBlockWidth
                            : deviceWidth * 0.90,

                            // Se usa un Stack, porque en dispositivos móviles,
                            // los botones de navegación quedan por encima del
                            // panel de cards... //
                            child: Stack
                            (
                                alignment: Alignment(1.0, 0.94),
                                children:
                                [
                                    Column
                                    (
                                        children:
                                        [
                                            SizedBox
                                            (
                                                height:
                                                desktop? Constants.marginExterior
                                                : tablet? Constants.marginExterior / 2
                                                : Constants.marginExterior / 3 
                                            ),

                                            Expanded(child: content),

                                            SizedBox
                                            (
                                                height:
                                                desktop? Constants.marginExterior
                                                : tablet? Constants.marginExterior / 2
                                                : Constants.marginExterior / 3
                                            )
                                        ]
                                    ),

                                    // Panel flotante de navegación para móviles //
                                    mobile?
                                    Container
                                    (
                                        child: Row
                                        (
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,

                                            children:
                                            [
                                                backButton,
                                                nextButton
                                            ]
                                        )
                                    )
                                    :
                                    Container(width: 0, height: 0)
                                ]
                            )
                        )
                    ),

                    // Espacio del segundo botón //
                    desktop || tablet ? Container
                    (
                        width: Constants.blockNavigationButtonSpace,
                        margin: EdgeInsets.symmetric(
                            vertical:
                            desktop? Constants.marginExterior
                            : tablet? Constants.marginExterior / 2
                            : Constants.marginExterior / 3
                        ),
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
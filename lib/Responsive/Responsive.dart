import 'package:flutter/material.dart';

class Device extends StatelessWidget
{
    static double width;
    static double height;
    @override
    Widget build(BuildContext context)
    {
        width = MediaQuery.of(context).size.width;
        height = MediaQuery.of(context).size.height;

        return null;
    }
}

class Responsive
{
    // Desktop //
    // > 980 píxeles de ancho //
    static const double landscapeBreakpoint = 980;

    // Tablet //
    // <= 980 y > 680 //

    // Mobile //
    // <= 680 //
    static const double portraitBreakpoint = 680;
}

class Constants
{
    // Medidas para bloques //
    static const double marginExterior = 44.0;
    static const double marginInterior = 34.0;
    static const double padding = 10.0;

    // Medidas para paneles //
    static const double webBlockWidth = 1000.0;
    static const double blockNavigationButtonSpace = 80.0;

    // Otras medidas //
    static const double titularPadding = 20.0;
    static const double normalCardHeight = 150.0;
    static const double cardPadding = 20.0;
}
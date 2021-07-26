import 'package:flutter/material.dart';

class AppColors extends StatelessWidget
{
    static Color primary = Color(0xFF44086A);
    static Color secundary = Color(0xFF5C309E);
    static Color tertiary = Color(0xFFB6086C);

    static Color contrasterNormal = Color(0xFF0086F6);
    static Color contrasterDark = Color(0xFF0858C4);

    static Color cardBackground = Color(0xFFEAEAF4);
    static Color cardShadow = Color(0x2A000000);

    static Color appBarClicked = Color(0xFFFFFFFF);
    static Color appBarNoClicked = Color(0xFF300458);

    static Color textStrong = Color(0xFF403844);
    static Color textNormal = Color(0xFF4C4C4C);
    static Color textLight = Color(0xFF909090);
    static Color textWhite = Color(0xFFFFFFFF);

    static Color softwareNormal = Color(0xFF963CBC);
    static Color softwareDark = Color(0xFF6F308A);

    static Color designNormal = Color(0xFF32DE32);
    static Color designDark = Color(0xFF18B818);

    static Color musicNormal = Color(0xFF60CCEA);
    static Color musicDark = Color(0xFF00B4E0);

    static Color audiovisualNormal = Color(0xFFC20018);
    static Color audiovisualDark = Color(0xFF7C0018);

    @override
    Widget build(BuildContext context)
    {
        return AppColors();
    }
}

class AppGradients
{
    static final horizontalPrimarySecundary = LinearGradient
    (
        colors:
        [
            AppColors.primary,
            AppColors.secundary
        ],
        begin: FractionalOffset(0.0, 0.0),
        end: FractionalOffset(1.0, 1.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp
    );
}
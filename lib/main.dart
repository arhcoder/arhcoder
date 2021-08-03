import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

import '00_Index/Index.dart';
import 'App/App.dart';

import '01_Projects/Screens/Software.dart';
import '01_Projects/Screens/Design.dart';
import '01_Projects/Screens/Music.dart';
import '01_Projects/Screens/Audiovisual.dart';

//  Esquema de páginas //

/*
--------------------------------------
/index
    /projects
        /normal-projects
            /software
                /software-project
            /design
                /desing-project
            /music
                /music-project
            /audiovisual
                /audiovisual-project
        /special-projects
            * Otra web.
    /contact/
        /social-media
            * Otra web.
        /write-me
            * Otra web.
        /message
            * Snack bar.
    /blog
--------------------------------------
*/

void main()
{
    runApp(MyApp());
}

class MyApp extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return GetMaterialApp
        (
            debugShowCheckedModeBanner: false,
            title: 'ARH Coder - Portafolio de Proyectos',

            initialRoute: "/index",

            getPages:
            [
                GetPage(name: "/index", page: () => Index()),
                GetPage(name: "/home", page: () => App()),

                GetPage(name: "/software", page: () => Software()),
                GetPage(name: "/design", page: () => Design()),
                GetPage(name: "/music", page: () => Music()),
                GetPage(name: "/audiovisual", page: () => Audiovisual())
            ],

            localizationsDelegates:
            [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: S.delegate.supportedLocales
        );
    }
}
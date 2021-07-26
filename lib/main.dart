import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '00_Index/Index.dart';
import 'App/App.dart';

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
                GetPage(name: "/home", page: () => App())
            ]
        );
    }
}
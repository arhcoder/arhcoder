import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:get/get.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar() => AppBar
(
    title: MouseRegion
    (
        cursor: MaterialStateMouseCursor.clickable,
        child: GestureDetector
        (
            onTap: (){Get.offNamedUntil("/home", (route) => false);},
            child: Image.asset("assets/images/arhcoder.png", height: 24.0)
        )
    ),
    centerTitle: true,

    backgroundColor: AppColors.primary,

    elevation: 0,

    // Botón de más información //
    actions:
    [
        // Menú de idiomas //
        PopupMenuButton
        (
            icon: Icon(Icons.translate),
            iconSize: 28.0,
            padding: EdgeInsets.only(right: 20.0),

            offset: Offset(0, kToolbarHeight),
            shape: RoundedRectangleBorder(),

            tooltip: S.current.languages,

            itemBuilder: (context) =>
            [
                // Español //
                PopupMenuItem
                (
                    child: Row
                    (
                        children:
                        [
                            Container
                            (
                                width: 24.0,
                                height: 24.0,
                                child: SvgPicture.asset("assets/icons/spanish.svg")
                            ),                            

                            SizedBox(width: 10.0),
                            
                            Text
                            (
                                S.current.spanish,
                                style: TextStyle
                                (
                                    fontFamily: "Gotham Bold",
                                    color: AppColors.textNormal
                                )
                            )
                        ]
                    )
                ),

                // Inglés //
                PopupMenuItem
                (
                    child: Row
                    (
                        children:
                        [
                            Container
                            (
                                width: 24.0,
                                height: 24.0,
                                child: SvgPicture.asset("assets/icons/english.svg")
                            ),                            

                            SizedBox(width: 10.0),
                            
                            Text
                            (
                                S.current.english,
                                style: TextStyle
                                (
                                    fontFamily: "Gotham Bold",
                                    color: AppColors.textNormal
                                )
                            )
                        ]
                    )
                )
            ]
        ),

        // Botón de info //
        /* Container
        (
            margin: EdgeInsets.only(right: 10.0),
            alignment: Alignment.centerRight,
            
            child: IconButton
            (
                icon: Icon(Icons.info),
                onPressed: (){Get.toNamed("/info");},
                iconSize: 28.0,
                color: Colors.white,
            )
        )*/
    ]
);
import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:get/get.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar() => AppBar
(    
    // Logo cleckeable de ARH coder //
    title: MouseRegion
    (
        cursor: MaterialStateMouseCursor.clickable,
        child: GestureDetector
        (
            onTap: (){Get.offNamedUntil("/home", (route) => false);},
            onLongPress: (){Get.toNamed("/info");},
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
            initialValue: "es",

            onSelected: (languageCode)
            {
                changeLanguage(languageCode);
            },

            itemBuilder: (context) =>
            [
                // Español //
                PopupMenuItem
                (
                    value: "es",
                    child: LanguageItem
                    (
                        svgPath: "assets/icons/spanish.svg",
                        text: S.current.spanish
                    )
                ),

                // Inglés //
                PopupMenuItem
                (
                    value: "en",
                    child: LanguageItem
                    (
                        svgPath: "assets/icons/english.svg",
                        text: S.current.english
                    )
                )
            ]
        )
    ]
);

changeLanguage(String languageCode)
{
    Get.updateLocale(Locale(languageCode));
    S.load(Locale(languageCode));
    Get.appUpdate();
}

class LanguageItem extends StatelessWidget
{
    final String svgPath;
    final String text;
    final String languageCode;

    LanguageItem({Key key, this.svgPath, this.text, this.languageCode}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Row
        (
            children:
            [
                Container
                (
                    width: 24.0,
                    height: 24.0,
                    child: SvgPicture.asset(svgPath)
                ),                            

                SizedBox(width: 10.0),
                
                Text
                (
                    text,
                    style: TextStyle
                    (
                        fontFamily: "Gotham Bold",
                        color: AppColors.textNormal
                    )
                )
            ]
        );
    }
}
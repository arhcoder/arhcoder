import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:get/get.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar() => AppBar
(
    // Logo clickeable de ARH coder //
    title: MouseRegion
    (
        cursor: MaterialStateMouseCursor.clickable,
        child: GestureDetector
        (
            onTap: ()
            {
                Get.offNamedUntil("/home", (route) => false);
                changeLanguage(Get.locale.languageCode);
            },
            onLongPress: (){Get.toNamed("/info");},
            child: Image.asset("assets/images/arhcoder.png", height: 28.0)
        )
    ),
    centerTitle: true,

    backgroundColor: AppColors.primary,

    elevation: 0,

    actions:
    [
        LanguagesMenu()
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

class LanguagesMenu extends StatefulWidget
{
    @override
    LanguagesMenuState createState() => LanguagesMenuState();
}

class LanguagesMenuState extends State <LanguagesMenu>
{
    // Describe el valor que toma de cada Item del menú //
    // Si el idioma de quien revisa el portafolio NO es //
    // Español, entonces se usará Inglés... //
    String currentLanguage =
    Get.deviceLocale.languageCode == "es"? "es": "en";

    @override
    Widget build(BuildContext context)
    {
        return // Menú de idiomas //
        PopupMenuButton
        (
            icon: Icon(Icons.translate),
            iconSize: 28.0,
            padding: EdgeInsets.only(right: 20.0),

            // Desplazamiento de la lista de idiomas //
            offset: Offset
            (
                // Eje x //
                0,

                // Eje y //
                (currentLanguage == "es")

                // Si se escogió la primer opción //
                ? kToolbarHeight + 4
                // Se se escogió la segunda (útlima) opción //
                : kToolbarHeight + 53
            ),

            shape: RoundedRectangleBorder(),

            tooltip: S.current.languages,
            initialValue: currentLanguage,

            onSelected: (languageCode)
            {
                changeLanguage(languageCode);
                setState(()
                {
                    currentLanguage = languageCode;
                });
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
        );
    }
}
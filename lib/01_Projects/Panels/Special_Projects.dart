import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/01_Projects/Widgets/special_card.dart';

class SpecialProjects extends StatelessWidget
{   
    @override
    Widget build(BuildContext context)
    {
        return Panel
        (
            title: S.current.special_projects,
            cardHeight: Constants.normalCardHeight * 2,
            largeCards: false,

            cards:
            [
                SpecialCard
                (
                    // Front //
                    image: "assets/images/ensecode_blue.png",
                    textFront: S.current.special_01_title,

                    // Back //
                    textBack: S.current.special_01_description,
                    backColor: AppColors.contrasterDark,
                    backButtonColor: AppColors.contrasterDeep,
                    backButtonText: S.current.special_project_button,
                    backFontColor: AppColors.textWhite,

                    link: "https://www.facebook.com/ensecode",

                    height: Constants.normalCardHeight,
                    
                    front: true
                ),
                
                SpecialCard
                (
                    // Front //
                    image: "assets/images/ensecode_green.png",
                    textFront: S.current.special_02_title,

                    // Back //
                    textBack: S.current.special_02_description,
                    backColor: AppColors.contrasterDark,
                    backButtonColor: AppColors.contrasterDeep,
                    backButtonText: S.current.special_project_button,
                    backFontColor: AppColors.textWhite,

                    link: "https://www.google.com",

                    height: Constants.normalCardHeight,
                    
                    front: true
                )
            ]
        );
    }
}
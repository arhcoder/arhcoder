import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/01_Projects/Widgets/normal_card.dart';

class NormalProjects extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return Panel
        (
            title: S.current.normal_projects,
            cardHeight: Constants.normalCardHeight,
            largeCards: false,

            cards:
            [
                NormalCard
                (
                    // Front //
                    icon: "assets/icons/software.svg",
                    textFront: S.current.software_title,

                    // Back //
                    textBack: S.current.software_descrition,
                    backColor: AppColors.softwareNormal,
                    backButtonColor: AppColors.softwareDark,
                    backButtonText: S.current.projects_button,
                    backFontColor: AppColors.textWhite,

                    route: "/software",

                    height: Constants.normalCardHeight,
                    
                    front: true,
                ),
                NormalCard
                (
                    // Front //
                    icon: "assets/icons/design.svg",
                    textFront: S.current.design_title,

                    // Back //
                    textBack: S.current.design_descrition,
                    backColor: AppColors.designNormal,
                    backButtonColor: AppColors.designDark,
                    backButtonText: S.current.projects_button,
                    backFontColor: AppColors.textWhite,

                    route: "/design",

                    height: Constants.normalCardHeight,
                    
                    front: true,
                ),
                NormalCard
                (
                    // Front //
                    icon: "assets/icons/music.svg",
                    textFront: S.current.music_title,

                    // Back //
                    textBack: S.current.music_descrition,
                    backColor: AppColors.musicNormal,
                    backButtonColor: AppColors.musicDark,
                    backButtonText: S.current.projects_button,
                    backFontColor: AppColors.textWhite,

                    route: "/music",

                    height: Constants.normalCardHeight,
                    
                    front: true,
                ),
                NormalCard
                (
                    // Front //
                    icon: "assets/icons/audiovisual.svg",
                    textFront: S.current.audiovisual_title,

                    // Back //
                    textBack: S.current.audiovisual_descrition,
                    backColor: AppColors.audiovisualNormal,
                    backButtonColor: AppColors.audiovisualDark,
                    backButtonText: S.current.projects_button,
                    backFontColor: AppColors.textWhite,

                    route: "/audiovisual",

                    height: Constants.normalCardHeight,
                    
                    front: true,
                )
            ]
        );
    }
}
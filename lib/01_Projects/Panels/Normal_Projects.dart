import 'package:flutter/material.dart';
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
                    icon: "assets/icons/software.svg",
                    textFront: S.current.software_title,
                    height: Constants.normalCardHeight
                ),
                NormalCard
                (
                    icon: "assets/icons/design.svg",
                    textFront: S.current.design_title,
                    height: Constants.normalCardHeight
                ),
                NormalCard
                (
                    icon: "assets/icons/music.svg",
                    textFront: S.current.music_title,
                    height: Constants.normalCardHeight
                ),
                NormalCard
                (
                    icon: "assets/icons/audiovisual.svg",
                    textFront: S.current.audiovisual_title,
                    height: Constants.normalCardHeight
                )
            ]
        );
    }
}
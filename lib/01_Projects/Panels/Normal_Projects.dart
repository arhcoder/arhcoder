import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/01_Projects/Widgets/card_front.dart';

class NormalProjects extends StatelessWidget
{
    int columns = 2;
    
    @override
    Widget build(BuildContext context)
    {
        double deviceWidth = MediaQuery.of(context).size.width;
        double deviceHeight = MediaQuery.of(context).size.height;

        // Landscape //
        if(deviceWidth > deviceHeight)
        {
            this.columns = 2;
        }
        // Portrait //
        else
        {
            this.columns = 1;
        }

        return Panel
        (
            title: S.current.normal_projects,
            columns: columns,
            cardHeight: Constants.normalCardHeight,

            cards:
            [
                CardFront
                (
                    icon: "assets/icons/software.svg",
                    text: S.current.software_title,
                    height: Constants.normalCardHeight
                ),
                CardFront
                (
                    icon: "assets/icons/design.svg",
                    text: S.current.design_title,
                    height: Constants.normalCardHeight
                ),
                CardFront
                (
                    icon: "assets/icons/music.svg",
                    text: S.current.music_title,
                    height: Constants.normalCardHeight
                ),
                CardFront
                (
                    icon: "assets/icons/audiovisual.svg",
                    text: S.current.audiovisual_title,
                    height: Constants.normalCardHeight
                )
            ]
        );
    }
}
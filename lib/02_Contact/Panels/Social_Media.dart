import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/01_Projects/Widgets/normal_card.dart';

class SocialMedia extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return Panel
        (
            title: S.current.social_media,
            cardHeight: Constants.normalCardHeight,
            largeCards: false,
            
            cards:
            [
                NormalCard
                (
                    icon: "assets/icons/instagram.svg",
                    textFront: S.current.my_instagram,
                    height: Constants.normalCardHeight
                ),
                NormalCard
                (
                    icon: "assets/icons/youtube.svg",
                    textFront: S.current.my_youtube,
                    height: Constants.normalCardHeight
                ),
                NormalCard
                (
                    icon: "assets/icons/twitter.svg",
                    textFront: S.current.my_twitter,
                    height: Constants.normalCardHeight
                ),
                NormalCard
                (
                    icon: "assets/icons/github.svg",
                    textFront: S.current.my_github,
                    height: Constants.normalCardHeight
                )
            ]
        );
    }
}
import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/01_Projects/Widgets/normal_card_front.dart';

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
                CardFront
                (
                    icon: "assets/icons/instagram.svg",
                    text: S.current.my_instagram,
                    height: Constants.normalCardHeight
                ),
                CardFront
                (
                    icon: "assets/icons/youtube.svg",
                    text: S.current.my_youtube,
                    height: Constants.normalCardHeight
                ),
                CardFront
                (
                    icon: "assets/icons/twitter.svg",
                    text: S.current.my_twitter,
                    height: Constants.normalCardHeight
                ),
                CardFront
                (
                    icon: "assets/icons/github.svg",
                    text: S.current.my_github,
                    height: Constants.normalCardHeight
                )
            ]
        );
    }
}
import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/01_Projects/Widgets/card_front.dart';

class SocialMedia extends StatelessWidget
{
    final int columns = 2;

    @override
    Widget build(BuildContext context)
    {
        return Panel
        (
            title: S.current.social_media,
            columns: columns,
            cardHeight: Constants.normalCardHeight,

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
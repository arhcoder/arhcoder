import 'package:arhcoder/Theme/Theme.dart';
import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/02_Contact/Widgets/link_card.dart';

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
                LinkCard
                (
                    icon: "assets/icons/instagram.svg",
                    text: S.current.my_instagram,
                    link: "https://www.instagram.com/arhcoder",

                    hoverBackground: AppColors.tertiary,
                    hoverFontColor: AppColors.textWhite,

                    height: Constants.normalCardHeight
                ),
                LinkCard
                (
                    icon: "assets/icons/youtube.svg",
                    text: S.current.my_youtube,
                    link: "https://www.youtube.com/channel/UCxN0ReoBaHUugwe41sms8Iw",

                    hoverBackground: AppColors.tertiary,
                    hoverFontColor: AppColors.textWhite,

                    height: Constants.normalCardHeight
                ),
                LinkCard
                (
                    icon: "assets/icons/twitter.svg",
                    text: S.current.my_twitter,
                    link: "https://www.twitter.com/arhcoder",

                    hoverBackground: AppColors.tertiary,
                    hoverFontColor: AppColors.textWhite,

                    height: Constants.normalCardHeight
                ),
                LinkCard
                (
                    icon: "assets/icons/github.svg",
                    text: S.current.my_github,
                    link: "https://www.github.com/arhcoder",

                    hoverBackground: AppColors.tertiary,
                    hoverFontColor: AppColors.textWhite,

                    height: Constants.normalCardHeight
                )
            ]
        );
    }
}
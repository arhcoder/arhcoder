import 'package:arhcoder/Theme/Theme.dart';
import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/02_Contact/Widgets/link_card.dart';

class WriteMe extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return Panel
        (
            title: S.current.write_me,
            cardHeight: Constants.normalCardHeight,
            largeCards: true,

            cards:
            [
                LinkCard
                (
                    icon: "assets/icons/messenger.svg",
                    text: S.current.my_messenger,
                    link: "https://www.x.com/arhcoder",

                    hoverBackground: AppColors.tertiary,
                    hoverFontColor: AppColors.textWhite,

                    height: Constants.normalCardHeight
                ),
                LinkCard
                (
                    icon: "assets/icons/gmail.svg",
                    text: S.current.my_gmail,
                    link: "https://www.x.com/arhcoder",

                    hoverBackground: AppColors.tertiary,
                    hoverFontColor: AppColors.textWhite,

                    height: Constants.normalCardHeight
                )
            ]
        );
    }
}
import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/01_Projects/Widgets/card_front.dart';

class WriteMe extends StatelessWidget
{
    final int columns = 1;

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
                CardFront
                (
                    icon: "assets/icons/messenger.svg",
                    text: S.current.my_messenger,
                    height: Constants.normalCardHeight
                ),
                CardFront
                (
                    icon: "assets/icons/gmail.svg",
                    text: S.current.my_gmail,
                    height: Constants.normalCardHeight
                )
            ]
        );
    }
}
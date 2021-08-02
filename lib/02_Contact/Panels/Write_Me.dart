import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';
import 'package:arhcoder/01_Projects/Widgets/normal_card.dart';

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
                NormalCard
                (
                    // Front //
                    icon: "assets/icons/messenger.svg",
                    textFront: S.current.my_messenger,
                    height: Constants.normalCardHeight

                    // Back //
                    
                ),
                NormalCard
                (
                    // Front //
                    icon: "assets/icons/gmail.svg",
                    textFront: S.current.my_gmail,
                    height: Constants.normalCardHeight

                    // Back //
                    
                )
            ]
        );
    }
}
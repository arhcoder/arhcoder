import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';

class WrittingScreen extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return Panel
        (
            title: S.current.writing_screen,
            columns: 2,
            cardHeight: Constants.normalCardHeight,

            cards:
            [

            ]
        );
    }
}
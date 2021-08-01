import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';

class SpecialProjects extends StatelessWidget
{   
    @override
    Widget build(BuildContext context)
    {
        return Panel
        (
            title: S.current.special_projects,
            cardHeight: Constants.normalCardHeight * 2,
            largeCards: false,

            cards:
            [
                
            ]
        );
    }
}
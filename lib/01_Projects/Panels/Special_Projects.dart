import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/panel.dart';

class SpecialProjects extends StatelessWidget
{
    final int columns = 2;
    
    @override
    Widget build(BuildContext context)
    {
        return Panel
        (
            title: S.current.special_projects,
            columns: columns,
            cardHeight: Constants.normalCardHeight * 2,
            cards:
            [
                
            ]
        );
    }
}
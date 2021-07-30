import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/titular.dart';

class WrittingScreen extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            child: Column
            (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                    Container
                    (
                        width: Constants.webBlockWidth - (Constants.blockNavigationButtonSpace * 2),
                        child: Titular(title: S.current.normal_projects)
                    )
                ]
            )
        );
    }
}
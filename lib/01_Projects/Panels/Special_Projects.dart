import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';

import 'package:arhcoder/Widgets/titular.dart';

class SpecialProjects extends StatelessWidget
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
                    Titular
                    (
                        title: S.current.special_projects
                    )
                ]
            )
        );
    }
}
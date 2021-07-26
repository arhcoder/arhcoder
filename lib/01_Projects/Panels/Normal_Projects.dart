import 'package:flutter/material.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/Titular.dart';

class NormalProjects extends StatelessWidget
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
                    Titular(title: "MIS PROYECTOS"),
                    SizedBox(height: Constants.marginInterior),
                    Expanded
                    (
                        child: Container
                        (
                            child: ListView
                            (
                                children:
                                [
                                    /*Column
                                    (
                                        children:
                                        [
                                            Container
                                            (
                                                color: AppColors.cardBackground,
                                                height: 100.0
                                            ),
                                            SizedBox(height: Constants.marginInterior),
                                            Container
                                            (
                                                color: AppColors.cardBackground,
                                                height: 100.0
                                            ),
                                            SizedBox(height: Constants.marginInterior),
                                            Container
                                            (
                                                color: AppColors.cardBackground,
                                                height: 100.0
                                            ),
                                            SizedBox(height: Constants.marginInterior),
                                            Container
                                            (
                                                color: AppColors.cardBackground,
                                                height: 100.0
                                            ),
                                            SizedBox(height: Constants.marginInterior),
                                            Container
                                            (
                                                color: AppColors.cardBackground,
                                                height: 100.0
                                            )
                                        ]
                                    )*/
                                ]
                            )
                        )
                    )
                ]
            )
        );
    }
}
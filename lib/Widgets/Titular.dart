import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

class Titular extends StatelessWidget
{
    final String title;

    Titular({Key key, this.title}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            color: AppColors.tertiary,

            child: Container
            (
                margin: EdgeInsets.symmetric(
                    vertical: Constants.marginInterior
                ),

                child: Center
                (
                    child: Text
                    (
                        this.title,
                        style: TextStyle
                        (
                            fontFamily: "Gotham Medium",
                            color: AppColors.textWhite,
                            fontSize: 28.0
                        )
                    )
                ),
            )
        );
    }
}
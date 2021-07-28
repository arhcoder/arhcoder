import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

class CardFront extends StatelessWidget
{
    final String icon;
    final String text;

    final double width;
    final double height;

    final VoidCallback hoverMethod;

    CardFront({Key key, this.icon, this.text, this.width, this.height, this.hoverMethod}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return GestureDetector
        (
            child: Container
            (
                width: this.width,
                height: this.height,
                padding: EdgeInsets.all(Constants.padding),

                decoration: BoxDecoration
                (
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(20.0)
                ),

                child: Row
                (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children:
                    [
                        Expanded
                        (
                            child: Image.asset(
                                this.icon,
                                width: this.height - Constants.padding * 2,
                                height: this.height - Constants.padding * 2
                            )
                        ),
                        Expanded
                        (
                            child: Text.rich(
                                TextSpan
                                (
                                    text: this.text,
                                    style: TextStyle
                                    (
                                        color: AppColors.textStrong,
                                        fontFamily: "Gotham Medium",
                                    )
                                )
                            ),
                        )
                    ]
                )
            )
        );
    }
}
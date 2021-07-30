import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardFront extends StatelessWidget
{
    final String icon;
    final String text;

    final double height;

    final VoidCallback hoverMethod;

    CardFront({Key key, this.icon, this.text, this.height, this.hoverMethod}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return GestureDetector
        (
            child: Container
            (
                height: this.height,
                padding: EdgeInsets.all(Constants.padding),

                decoration: BoxDecoration
                (
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow:
                    [
                        BoxShadow
                        (
                            color: Colors.grey.withOpacity(0.6),
                            offset: Offset(0, 6),
                            blurRadius: 6.0,
                            spreadRadius: 0
                        )
                    ],
                ),

                child: Row
                (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children:
                    [
                        SizedBox(width: Constants.cardPadding),

                        Expanded
                        (
                            child: Container
                            (
                                width: this.height - Constants.marginInterior * 2,
                                height: this.height - Constants.marginInterior * 2,
                                child: SvgPicture.asset(
                                    this.icon
                                ),
                            ),
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
                                        fontSize: 24.0
                                    )
                                )
                            ),
                        ),
                        SizedBox(width: Constants.cardPadding)
                    ]
                )
            )
        );
    }
}
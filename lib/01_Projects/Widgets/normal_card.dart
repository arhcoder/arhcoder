import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class NormalCard extends StatelessWidget
{
    final String icon;

    final String textFront;
    // final String textBack;

    // final String buttonText;

    final double height;

    final VoidCallback clickAction;

    NormalCard({Key key, this.icon, this.textFront, this.height, this.clickAction}) : super(key: key);

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
                        SizedBox(width: Constants.marginInterior),

                        // Ícono //
                        Container
                        (
                            width: this.height - Constants.marginInterior * 2 > Constants.maxCardSize
                            ? this.height - Constants.marginInterior * 2
                            : Constants.maxCardSize,

                            height: this.height - Constants.marginInterior * 2 > Constants.maxCardSize
                            ? this.height - Constants.marginInterior * 2
                            : Constants.maxCardSize,
                            child: SvgPicture.asset(
                                this.icon
                            ),
                        ),

                        SizedBox(width: Constants.marginInterior),

                        // Texto //
                        Expanded
                        (
                            child: AutoSizeText
                            (
                                this.textFront,
                                maxLines: 1,
                                style: TextStyle
                                (
                                    color: AppColors.textStrong,
                                    fontFamily: "Gotham Medium",
                                    fontSize: 28.0
                                )
                            )
                        ),

                        SizedBox(width: Constants.marginInterior)
                    ]
                )
            )
        );
    }
}
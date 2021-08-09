import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:auto_size_text/auto_size_text.dart';

class Presentation extends StatelessWidget
{
    final String title;
    final String message;
    final String buttonText;
    final String imagePath;
    final VoidCallback buttonMethod;
    final bool landscape;

    Presentation({Key key, this.title, this.message, this.buttonText,
    this.imagePath, this.buttonMethod, this.landscape}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            
        );
    }
}


class LandsdcapePresentation extends StatelessWidget
{
    final String title;
    final String message;
    final String buttonText;
    final String imagePath;
    final VoidCallback buttonMethod;

    LandsdcapePresentation({Key key, this.title, this.message, this.buttonText,
    this.imagePath, this.buttonMethod}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        double deviceWidth = MediaQuery.of(context).size.width;
        double deviceHeight = MediaQuery.of(context).size.height;

        return Container
        (
            child: Center
            (
                child: Row
                (
                    children:
                    [
                        // Imágen //
                        Container
                        (
                            // deviceWidth > Constants.minLandscapePresentationScreenHeight?
                        )
                    ]
                )
            )
        );
    }
}
class PortraitPresentation extends StatelessWidget
{
    final String title;
    final String message;
    final String buttonText;
    final String imagePath;
    final VoidCallback buttonMethod;

    PortraitPresentation({Key key, this.title, this.message, this.buttonText,
    this.imagePath, this.buttonMethod}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            
        );
    }
}
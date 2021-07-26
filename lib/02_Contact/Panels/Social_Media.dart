import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';

import 'package:arhcoder/Widgets/Titular.dart';

class SocialMedia extends StatelessWidget
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
                        title: "MIS REDES SOCIALES"
                    )
                ]
            )
        );
    }
}
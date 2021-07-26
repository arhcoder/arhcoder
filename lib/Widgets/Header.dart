import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

AppBar buildAppBar() => AppBar
(
    title: Image.asset("assets/images/arhcoder.png", height: 24.0),
    centerTitle: true,

    backgroundColor: AppColors.primary,

    elevation: 0,

    actions:
    [
        Padding
        (
            padding: const EdgeInsets.all(Constants.padding)
        )
    ]
);
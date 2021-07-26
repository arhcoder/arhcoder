import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';

class Blog extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            decoration: BoxDecoration
			(
				gradient: AppGradients.horizontalPrimarySecundary
			)
        );
    }
}
import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Theme/Theme.dart';

import 'dart:math' as math;

class PanelButton extends StatefulWidget
{
    final VoidCallback method;
    final bool isBackButton;

    PanelButton({Key key, this.method, this.isBackButton}) : super(key: key);
    
    @override
    PanelButtonState createState() => PanelButtonState();
}

class PanelButtonState extends State <PanelButton>
{
    @override
    Widget build(BuildContext context)
    {
        return FloatingActionButton
        (
            backgroundColor: AppColors.tertiary,
            tooltip: S.current.back,
            onPressed: widget.method,
            child: widget.isBackButton ?
            Icon
            (
                Icons.arrow_back
            )
            :
            Transform
            (
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Icon(Icons.arrow_back)
            )
        );
    }
}
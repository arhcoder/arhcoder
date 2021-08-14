import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';

class MyInputDecoration extends InputDecoration
{
    final IconData myIcon;
    final String myLabelText;
    final String myHintText;

    MyInputDecoration
    ({
        Key key,
        this.myIcon,
        this.myLabelText,
        this.myHintText
    });

    // Argumentos sobreescritos //
    @override
    InputBorder get enabledBorder => OutlineInputBorder
    (
        borderSide: BorderSide(color: Colors.transparent, width: 2.0),
    );

    @override
    InputBorder get focusedBorder => OutlineInputBorder
    (
        gapPadding: 8.0,
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: AppColors.contrasterNormal, width: 2.4),
    );

    @override
    Widget get prefixIcon => Container
    (
        margin: EdgeInsets.only(left: 10.0),
        child: Padding
        (
            padding: EdgeInsets.all(8.0),
            child: Icon(myIcon)
        ),
    );

    @override
    String get labelText => myLabelText;

    @override
    TextStyle get labelStyle => TextStyle
    (
        fontFamily: "Gotham Medium",
        color: AppColors.textNormal,
        fontSize: 20
    );

    @override
    String get hintText => myHintText;

    @override
    TextStyle get hintStyle => TextStyle
    (
        fontFamily: "Gotham Book",
        color: AppColors.textLight,
        fontSize: 14
    );

    @override
    Color get focusColor => AppColors.contrasterNormal;
}
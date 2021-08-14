import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';

import 'package:arhcoder/Widgets/titular.dart';
import 'package:arhcoder/02_Contact/Widgets/my_Input_decoration.dart';

class WrittingScreen extends StatelessWidget
{
    double textFieldHight = 60;

    ScrollController scrollController = ScrollController();

    @override
    Widget build(BuildContext context)
    {
        // Medidas de la pantalla //
        double deviceWidth = MediaQuery.of(context).size.width;

        // Tipos de dispositivos //
        bool desktop;
        bool tablet;
        // bool mobile;

        // Desktop //
        if(deviceWidth > Responsive.landscapeBreakpoint)
        {
            desktop = true;
            tablet = false;
            // mobile = false;
        }
        // Tablet //
        else if(deviceWidth <= Responsive.landscapeBreakpoint
        && deviceWidth > Responsive.portraitBreakpoint)
        {
            tablet = true;
            desktop = false;
            // mobile = false;
        }
        // Mobile //
        else if(deviceWidth <= Responsive.portraitBreakpoint)
        {
            // mobile = true;
            desktop = false;
            tablet = false;
        }

        // Márgenes con responsive //
        double internalMargin = desktop?
        Constants.marginInterior:
        Constants.marginInterior / 2;

        TextStyle textFieldStyle = TextStyle
        (
            fontFamily: "Gotham Book",
            color: AppColors.textNormal,
            fontSize: 16
        );

        // TEXT FIELDS //
        Widget FirstNameBar = TextFieldSpace
        (
            flex: 1,
            content: TextField
            (
                keyboardType: TextInputType.name,
                decoration: MyInputDecoration
                (
                    myIcon: Icons.person,
                    myLabelText: S.current.first_name,
                    myHintText: S.current.first_name_hint
                ),
                style: textFieldStyle,
                expands: true,
                minLines: null,
                maxLines: null
            )
        );
        Widget LastNameBar = TextFieldSpace
        (
            flex: 1,
            content: TextField
            (
                keyboardType: TextInputType.name,
                decoration: MyInputDecoration
                (
                    myIcon: Icons.person,
                    myLabelText: S.current.last_name,
                    myHintText: S.current.last_name_hint
                ),
                style: textFieldStyle,
                expands: true,
                minLines: null,
                maxLines: null
            )
        );
        Widget EmailBar = TextFieldSpace
        (
            flex: desktop? 5 : 1,
            content: TextField
            (
                keyboardType: TextInputType.emailAddress,
                decoration: MyInputDecoration
                (
                    myIcon: Icons.email,
                    myLabelText: S.current.email,
                    myHintText: S.current.email_hint
                ),
                style: textFieldStyle,
                expands: true,
                minLines: null,
                maxLines: null
            )
        );
        Widget SubjectBar = TextFieldSpace
        (
            flex: desktop? 5 : 1,
            content: TextField
            (
                keyboardType: TextInputType.text,
                decoration: MyInputDecoration
                (
                    myIcon: Icons.subject,
                    myLabelText: S.current.subject,
                    myHintText: S.current.subject_hint
                ),
                style: textFieldStyle,
                expands: true,
                minLines: null,
                maxLines: null
            )
        );

        return Container
        (
            child: Column
            (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children:
                [
                    // Titular //
                    Container
                    (
                        width:
                        desktop ? Constants.webBlockWidth - (Constants.blockNavigationButtonSpace * 2):
                        tablet ? deviceWidth * 0.90 - (Constants.blockNavigationButtonSpace * 2):
                        deviceWidth * 0.90,

                        child: Titular(title: S.current.writing_screen)
                    ),
                    
                    SizedBox
                    (
                        height:
                        desktop? Constants.marginExterior
                        : tablet? Constants.marginExterior / 2
                        : Constants.marginExterior / 3
                    ),
                    
                    Expanded
                    (
                        child: Stack
                        (
                            alignment: Alignment(1.0, 1.14),

                            children:
                            [
                                Container
                                (
                                    width: desktop ? Constants.webBlockWidth - (Constants.blockNavigationButtonSpace * 2):
                                    tablet ? deviceWidth * 0.90 - (Constants.blockNavigationButtonSpace * 2):
                                    deviceWidth * 0.90,

                                    child: Scrollbar
                                    (
                                        child: ListView
                                        (
                                            children:
                                            [
                                                // Nombre y apellido //
                                                Container
                                                (
                                                    margin: !desktop? EdgeInsets.only(top: 8.0)
                                                    : EdgeInsets.only(top: 0.0),
                                                    height: textFieldHight,
                                                    child: (desktop)
                                                    ? Row
                                                    (
                                                        children:
                                                        [
                                                            FirstNameBar,
                                                            SizedBox(width: internalMargin),
                                                            LastNameBar
                                                        ]
                                                    )
                                                    : FirstNameBar
                                                ),
                                                SizedBox(height: internalMargin),
                                                !desktop?
                                                Container
                                                (
                                                    height: textFieldHight,
                                                    child: LastNameBar
                                                )
                                                : Container(width: 0, height: 0),

                                                !desktop?
                                                SizedBox(height: internalMargin)
                                                : Container(width: 0, height: 0),

                                                // Correo y sujeto //
                                                Container
                                                (
                                                    height: textFieldHight,
                                                    child: (desktop)
                                                    ? Row
                                                    (
                                                        children:
                                                        [
                                                            EmailBar,
                                                            SizedBox(width: internalMargin),
                                                            SubjectBar
                                                        ]
                                                    )
                                                    : EmailBar
                                                ),
                                                SizedBox(height: internalMargin),
                                                !desktop?
                                                Container
                                                (
                                                    height: textFieldHight,
                                                    child: SubjectBar
                                                )
                                                : Container(width: 0, height: 0),
                                                !desktop?
                                                SizedBox(height: internalMargin)
                                                : Container(width: 0, height: 0),

                                                // Mensaje //
                                                Container
                                                (
                                                    height: textFieldHight * 2.5,
                                                    child: TextFieldSpace
                                                    (
                                                        flex: 1,
                                                        content: TextField
                                                        (
                                                            keyboardType: TextInputType.multiline,
                                                            decoration: MyInputDecoration
                                                            (
                                                                myIcon: Icons.message,
                                                                myLabelText: S.current.message,
                                                                myHintText: S.current.message_hint
                                                            ),
                                                            style: textFieldStyle,
                                                            expands: true,
                                                            minLines: null,
                                                            maxLines: null
                                                        )
                                                    )
                                                )
                                            ]
                                        )
                                    )
                                ),
                                
                                FloatingActionButton
                                (
                                    backgroundColor: AppColors.contrasterDark,
                                    tooltip: S.current.send_message,

                                    onPressed: (){},

                                    child: Icon
                                    (
                                        Icons.send
                                    )
                                )
                            ]
                        )
                    )
                ]
            )
        );
    }
}

class TextFieldSpace extends StatelessWidget
{
    final Widget content;
    final int flex;

    TextFieldSpace({Key key, this.content, this.flex}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Expanded
        (
            flex: flex,
            child: Container
            (
                child: content,
                decoration: BoxDecoration
                (
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow:
                    [
                        BoxShadow
                        (
                            color: Colors.grey.withOpacity(0.4),
                            offset: Offset(0, 4),
                            blurRadius: 6.0,
                            spreadRadius: 0
                        )
                    ]
                )
            )
        );
    }
}
import 'package:flutter/material.dart';

import 'package:arhcoder/Widgets/block.dart';
import 'Panels/Social_Media.dart';
import 'Panels/Write_Me.dart';
import 'Panels/Writting_Screen.dart';

class Contact extends StatefulWidget
{
    Contact({Key key}) : super(key: key);

    @override
    ContactState createState() => ContactState();
}

class ContactState extends State <Contact>
{
    // Lista de Panels //
    int currentPanel = 0;
    final List <Widget> Panels =
    [
        Center(child: SocialMedia()),
        Center(child: WriteMe()),
        Center(child: WrittingScreen()),
    ];

    bool hideBackButton = true;
    bool hideNextButton = false;

    // Cambios de Panel //
    backPanel()
    {
        currentPanel > 0 ?
        setState(()
        {
            currentPanel--;
            hideUnnecessaryPanelNavigationButton();
        }) : null;
    }
    nextPanel()
    {
        currentPanel < Panels.length - 1 ?
        setState(()
        {
            currentPanel++;
            hideUnnecessaryPanelNavigationButton();
        }) : null;
    }

    hideUnnecessaryPanelNavigationButton()
    {
        if (currentPanel == 0)
        {
            setState(()
            {
                hideBackButton = true;
                hideNextButton = false;
            });
        }
        else if (currentPanel == Panels.length - 1)
        {
            setState(()
            {
                hideNextButton = true;
                hideBackButton = false;
            });
        }
        else
        {
            setState(()
            {
                hideBackButton = false;
                hideNextButton = false;
            });
        }
    }

    @override
    Widget build(BuildContext context)
    {
        return Block
        (
            content: Panels[currentPanel],
            backMethod: backPanel,
            nextMethod: nextPanel,
            hideBackButton: hideBackButton,
            hideNextButton: hideNextButton,
        );
    }
}
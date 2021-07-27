import 'package:flutter/material.dart';

import 'package:arhcoder/Widgets/block.dart';
import 'Panels/Normal_Projects.dart';
import 'Panels/Special_Projects.dart';

class Projects extends StatefulWidget
{
    Projects({Key key}) : super(key: key);

    @override
    ProjectsState createState() => ProjectsState();
}

class ProjectsState extends State <Projects>
{
    // Lista de Panels //
    int currentPanel = 0;
    final List <Widget> Panels =
    [
        Center(child: NormalProjects()),
        Center(child: SpecialProjects())
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
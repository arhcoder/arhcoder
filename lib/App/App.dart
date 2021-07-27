import 'package:flutter/material.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:arhcoder/Theme/Theme.dart';

import 'package:arhcoder/Widgets/header.dart';
import 'package:arhcoder/01_Projects/Projects.dart';
import 'package:arhcoder/02_Contact/Contact.dart';
import 'package:arhcoder/03_Blog/Blog.dart';

// Es el Widget completo de la app //
// Bottom Navigation Bar //

class App extends StatefulWidget
{
    @override
    State <StatefulWidget> createState()
    {
        return AppState();
    }
}

class AppState extends State <App>
{
    // Lista de Blocks //
    int panelIndex = 0;
    final List <Widget> Blocks =
    [
        Center(child: Projects()),
        Center(child: Contact()),
        Center(child: Blog()),
    ];

    // Cambia de Layout según su índice //
    void SwitchLayout(int index)
    {
        setState(()
        {
            panelIndex = index;
        });
    }

    @override
    Widget build(BuildContext context)
    {
        return Scaffold
        (
            appBar: buildAppBar(),

            body: Blocks[panelIndex],
            
            bottomNavigationBar: Theme
            (
                data: Theme.of(context).copyWith(
                    canvasColor: AppColors.secundary
                ),

                child: BottomNavigationBar
                (
                    backgroundColor: AppColors.secundary,
                    selectedItemColor: AppColors.appBarClicked,
                    unselectedItemColor: AppColors.appBarNoClicked,
                    elevation: 0,

                    onTap: SwitchLayout,

                    currentIndex: panelIndex,

                    showSelectedLabels: false,
                    showUnselectedLabels: false,

                    items:
                    [
                        BottomNavigationBarItem
                        (
                            icon: Icon(Icons.home),
                            label: S.current.projects
                        ),
                        BottomNavigationBarItem
                        (
                            icon: Icon(Icons.contact_page),
                            label: S.current.contact
                        ),
                        BottomNavigationBarItem
                        (
                            icon: Icon(Icons.book),
                            label: S.current.blog
                        )
                    ]
                )
            )
        );
    }
}
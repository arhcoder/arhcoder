import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/generated/l10n.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

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
    int blockIndex = 0;
    final List <Widget> Blocks =
    [
        Center(child: Projects()),
        Center(child: Contact()),
        Center(child: Blog()),
    ];

    // Cambia de Layout según su índice //
    void switchLayout(int index)
    {
        setState(()
        {
            blockIndex = index;
        });
    }

    @override
    Widget build(BuildContext context)
    {
        return Scaffold
        (
            appBar: buildAppBar(),

            body: Blocks[blockIndex],
            
            bottomNavigationBar: BottomNavyBar
            (
                selectedIndex: blockIndex,
                onItemSelected: switchLayout,
                showElevation: true,

                backgroundColor: AppColors.secundary,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                // Mis implementaciones en el package //
                showSelectionShape: false,
                cursor: MaterialStateMouseCursor.clickable,

                itemCornerRadius: 24.0,
                iconSize: 30,

                items:
                [
                    BottomNavyBarItem
                    (
                        icon: Icon(Icons.home),
                        title: Text(S.current.projects),
                        activeColor: AppColors.appBarClicked,
                        inactiveColor: AppColors.appBarNoClicked
                    ),
                    BottomNavyBarItem
                    (
                        icon: Icon(Icons.contact_page),
                        title: Text(S.current.contact),
                        activeColor: AppColors.appBarClicked,
                        inactiveColor: AppColors.appBarNoClicked
                    ),
                    BottomNavyBarItem
                    (
                        icon: Icon(Icons.book),
                        title: Text(S.current.blog),
                        activeColor: AppColors.appBarClicked,
                        inactiveColor: AppColors.appBarNoClicked
                    )
                ]

                /*backgroundColor: AppColors.secundary,
                selectedItemColor: AppColors.appBarClicked,
                unselectedItemColor: AppColors.appBarNoClicked,
                elevation: 0,

                onTap: switchLayout,

                currentIndex: blockIndex,

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
                ]*/
            )
        );
    }
}
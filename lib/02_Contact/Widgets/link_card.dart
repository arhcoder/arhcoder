import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

// CARTA PARA LOS TIPOS DE PROYECTOS //
// Alterna entre una carta frontal y una trasera al hacer click //
class LinkCard extends StatefulWidget
{
    final String icon;
    final String text;
    final String link;

    final Color hoverBackground;
    final Color hoverFontColor;

    final double height;

    LinkCard({Key key, this.icon, this.text, this.link,
    this.hoverBackground,this.hoverFontColor, this.height})
    : super(key: key);

    @override
    LinkCardState createState() => LinkCardState();
}

class LinkCardState extends State <LinkCard>
{
    bool hovered = false;

    @override
    Widget build(BuildContext context)
    {
        return MouseRegion
        (
            // Hover //
            onEnter: (PointerEvent details) => setState(()
            {
                hovered = !hovered;
            }),
            onExit: (PointerEvent details) => setState(()
            {
                hovered = !hovered;
            }),

            cursor: MaterialStateMouseCursor.clickable,
            
            child: GestureDetector
            (
                onTap: ()
                {

                },

                child: Container
                (
                    height: widget.height,
                    padding: EdgeInsets.all(Constants.padding),

                    decoration: BoxDecoration
                    (
                        color: hovered
                        ? widget.hoverBackground
                        : AppColors.cardBackground,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow:
                        [
                            BoxShadow
                            (
                                color: Colors.grey.withOpacity(0.6),
                                offset: Offset(0, 6),
                                blurRadius: 6.0,
                                spreadRadius: 0
                            )
                        ]
                    ),

                    child: Row
                    (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children:
                        [
                            // Ícono //
                            Flexible
                            (
                                child: Container
                                (
                                    width: widget.height - Constants.marginInterior * 2 > Constants.maxCardSize
                                    ? widget.height - Constants.marginInterior * 2
                                    : Constants.maxCardSize,

                                    height: widget.height - Constants.marginInterior * 2 > Constants.maxCardSize
                                    ? widget.height - Constants.marginInterior * 2
                                    : Constants.maxCardSize,
                                    child: SvgPicture.asset(
                                        widget.icon
                                    )
                                )
                            ),

                            SizedBox(width: Constants.marginInterior),

                            // Texto //
                            Expanded
                            (
                                child: AutoSizeText
                                (
                                    widget.text,
                                    maxLines: 1,
                                    style: TextStyle
                                    (
                                        color: hovered
                                        ? widget.hoverFontColor
                                        : AppColors.textStrong,
                                        fontFamily: "Gotham Medium",
                                        fontSize: 28.0
                                    ),
                                    textAlign: TextAlign.left
                                )
                            )
                        ]
                    )
                )
            )
        );
    }
}
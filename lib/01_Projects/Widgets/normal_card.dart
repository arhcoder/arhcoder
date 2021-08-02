import 'package:flutter/material.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';

// CARTA PARA LOS TIPOS DE PROYECTOS //
// Alterna entre una carta frontal y una trasera al hacer click //
class NormalCard extends StatefulWidget
{
    final String icon;

    final String textFront;
    final String textBack;

    final Color backColor;
    final Color backButtonColor;
    final Color backFontColor;

    final String backButtonText;

    final String route;

    final double height;

    bool front;

    NormalCard
    ({
        Key key, this.icon,
        this.textFront,
        this.textBack,
        this.backColor,
        this.backButtonColor,
        this.backFontColor,
        this.backButtonText,
        this.route,
        this.height,
        this.front
    })
    : super(key: key);

  @override
  NormalCardState createState() => NormalCardState();
}
// Estado //
class NormalCardState extends State <NormalCard>
{
    @override
    Widget build(BuildContext context)
    {
        return GestureDetector
        (
            onTap: ()
            {
                setState(()
                {
                    widget.front = !widget.front;
                });
            },

            child: widget.front ?
            FrontCard
            (
                icon: widget.icon,
                text: widget.textFront,
                height: widget.height,
            )
            :
            BackCard
            (
                text: widget.textBack,
                buttonText: widget.backButtonText,
                backgroundColor: widget.backColor,
                fontColor: widget.backFontColor,
                buttonColor: widget.backButtonColor,
                route: widget.route,
                height: widget.height,
            )
        );
    }
}


// FRENTE DE LA CARTA //
class FrontCard extends StatelessWidget
{
    final String icon;
    final String text;
    final double height;

    FrontCard
    ({
        Key key,
        this.icon,
        this.text,
        this.height
    })
    : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            height: height,
            padding: EdgeInsets.all(Constants.padding),

            decoration: BoxDecoration
            (
                color: AppColors.cardBackground,
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
                            width: height - Constants.marginInterior * 2 > Constants.maxCardSize
                            ? height - Constants.marginInterior * 2
                            : Constants.maxCardSize,

                            height: height - Constants.marginInterior * 2 > Constants.maxCardSize
                            ? height - Constants.marginInterior * 2
                            : Constants.maxCardSize,
                            child: SvgPicture.asset(
                                icon
                            )
                        )
                    ),

                    SizedBox(width: Constants.marginInterior),

                    // Texto //
                    Expanded
                    (
                        child: AutoSizeText
                        (
                            text,
                            maxLines: 1,
                            style: TextStyle
                            (
                                color: AppColors.textStrong,
                                fontFamily: "Gotham Medium",
                                fontSize: 28.0
                            ),
                            textAlign: TextAlign.left
                        )
                    )
                ]
            )
        );
    }
}

// TRASERO DE LA CARTA //
class BackCard extends StatelessWidget
{
    final String text;
    final String buttonText;

    final Color backgroundColor;
    final Color buttonColor;
    final Color fontColor;

    final String route;

    final double height;

    BackCard
    ({
        Key key,
        this.text,
        this.buttonText,
        this.backgroundColor,
        this.buttonColor,
        this.fontColor,
        this.route,
        this.height
    })
    : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            height: height,
            padding: EdgeInsets.symmetric(
                vertical: Constants.padding * 1.5,
                horizontal: Constants.marginExterior
            ),

            decoration: BoxDecoration
            (
                color: backgroundColor,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow:
                [
                    BoxShadow
                    (
                        color: Colors.black.withOpacity(0.4),
                        offset: Offset(0, 6),
                        blurRadius: 6.0,
                        spreadRadius: 0
                    )
                ]
            ),

            child: Column
            (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:
                [
                    // Texto //
                    AutoSizeText
                    (
                        text,
                        maxLines: 3,
                        style: TextStyle
                        (
                            color: fontColor,
                            fontFamily: "Gotham Book",
                            fontSize: 16.0
                        ),
                        textAlign: TextAlign.center
                    ),

                    // Botón //
                    Flexible
                    (
                        child: Container
                        (
                            width: 224.0,
                            height: 28.0,
                            
                            child: Material
                            (
                                child: InkWell
                                (
                                    onTap: (){Get.toNamed(route);},
                                    child: Container
                                    (
                                        child: Center
                                        (
                                            child: Text
                                            (
                                                buttonText,
                                                style: TextStyle
                                                (
                                                    fontFamily: "Gotham Bold",
                                                    color: fontColor,
                                                    fontSize: 14.0
                                                )
                                            )
                                        )
                                    )
                                ),
                                color: Colors.transparent,
                            ),
                            decoration: BoxDecoration
                            (
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(10.0)
                            )
                        ),
                    )
                ]
            )
        );
    }
}
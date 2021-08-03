import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:arhcoder/Theme/Theme.dart';
import 'package:arhcoder/Responsive/Responsive.dart';
import 'package:auto_size_text/auto_size_text.dart';

// CARTA PARA LOS TIPOS DE PROYECTOS ESPECIALES //
// Alterna entre una carta frontal y una trasera al hacer click //
class SpecialCard extends StatefulWidget
{
    final String image;

    final String textFront;
    final String textBack;

    final Color backColor;
    final Color backButtonColor;
    final Color backFontColor;
    final String backButtonText;

    final String link;

    final double height;

    bool front;

    SpecialCard
    ({
        Key key,
        this.image,
        this.textFront,
        this.textBack,
        this.backColor,
        this.backButtonColor,
        this.backFontColor,
        this.backButtonText,
        this.link,
        this.height,
        this.front
    })
    : super(key: key);

    @override
    SpecialCardState createState() => SpecialCardState();
}
class SpecialCardState extends State <SpecialCard>
{
    @override
    Widget build(BuildContext context)
    {
        return MouseRegion
        (
            // Hover //
            onEnter: (PointerEvent details) => setState(()
            {
                widget.front = false;
            }),
            onExit: (PointerEvent details) => setState(()
            {
                widget.front = true;
            }),

            child: GestureDetector
            (
                onTap: ()
                {
                    setState(()
                    {
                        widget.front = !widget.front;
                    });
                },

                child: widget.front ?
                SpecialFrontCard
                (
                    image: widget.image,
                    text: widget.textFront,
                    height: widget.height,
                )
                :
                SpecialBackCard
                (
                    text: widget.textBack,
                    buttonText: widget.backButtonText,
                    backgroundColor: widget.backColor,
                    fontColor: widget.backFontColor,
                    buttonColor: widget.backButtonColor,
                    link: widget.link,
                    height: widget.height,
                )
            )
        );
    }
}


// FRENTE DE LA CARTA //
class SpecialFrontCard extends StatelessWidget
{
    final String image;
    final String text;
    final double height;

    SpecialFrontCard
    ({
        Key key,
        this.image,
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

            child: Column
            (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:
                [
                    SizedBox(height: Constants.marginInterior / 2),

                    // Texto //
                    Expanded
                    (
                        flex: 1,
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
                            textAlign: TextAlign.center
                        )
                    ),
                    // Imagen //
                    Expanded
                    (
                        flex: 4,
                        child: Container
                        (
                            width: height * 2 - Constants.marginExterior * 2,
                            height: height * 2 - Constants.marginExterior * 2,

                            decoration: BoxDecoration
                            (
                                image: DecorationImage
                                (
                                    image: AssetImage(image),
                                    fit: BoxFit.fill
                                ),
                                borderRadius: BorderRadius.circular(10.0)
                            )
                        )
                    ),
                    SizedBox(height: Constants.marginInterior / 2)
                ]
            )
        );
    }
}

// TRASERO DE LA CARTA //
class SpecialBackCard extends StatelessWidget
{
    final String text;
    final String buttonText;

    final Color backgroundColor;
    final Color buttonColor;
    final Color fontColor;

    final String link;

    final double height;

    SpecialBackCard
    ({
        Key key,
        this.text,
        this.buttonText,
        this.backgroundColor,
        this.buttonColor,
        this.fontColor,
        this.link,
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
                        maxLines: 8,
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
                            height: 34.0,
                            
                            child: Material
                            (
                                child: InkWell
                                (
                                    onTap: () async
                                    {
                                        if(await canLaunch(link))
                                        {
                                            await launch(link);
                                        }
                                        else
                                        {
                                            print("No se pudo abrir ${link}");
                                        }
                                    },

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
                        )
                    )
                ]
            )
        );
    }
}
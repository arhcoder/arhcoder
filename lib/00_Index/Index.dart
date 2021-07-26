import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:arhcoder/Theme/Theme.dart';

class Index extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return Scaffold
        (
            body: Container
            (
                decoration: BoxDecoration
                (
                    gradient: AppGradients.horizontalPrimarySecundary
                ),
                child: Center
                (
                    child: ElevatedButton
                    (
                        onPressed: (){ Get.offNamed("/home"); },
                        child: Text("ENTRAR")
                    )
                )
            )
        );
    }
}
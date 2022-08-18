import 'dart:async';

import 'package:e_wallet_app/shared/theme.dart';
import 'package:e_wallet_app/ui/pages/OnBoarding_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget{
  const SplashPage({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    // Orientation orientation = MediaQuery.of(context).orientation;
    Timer(const Duration(seconds: 2), (){
      Navigator.push(
        context, MaterialPageRoute(
          builder: (context) =>const OnBoarding_page(),
        ));
    });
    return Scaffold(
      
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Container(
          width: screenSize.width,
          height: 55,
          decoration: const BoxDecoration(
            image : DecorationImage(
              image: AssetImage(
                'assets/logo_dark.png',
              )
              ),
          ),
        ) ,
      ),
    );
  }
}

  
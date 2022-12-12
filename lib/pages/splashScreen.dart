import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
          () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {


    var assetsImage = const AssetImage('assets/images/splashScreen.jpg');
    var image = Image(image: assetsImage, height: 400.h,);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
          child: image,
        ),
      ), //<- place where the image appears
    );
  }
}

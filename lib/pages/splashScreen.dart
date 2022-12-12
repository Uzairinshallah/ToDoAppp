import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/ccolors.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer(
    //   const Duration(seconds: 5),
    //   () => Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(
    //       builder: (BuildContext context) => const HomePage(),
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    var assetsImage = const AssetImage('assets/images/splashScreen.jpg');
    var image = Image(
      image: assetsImage,
      height: 400.h,
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/complete.gif",
              width: 70,
              height: 70,
            ),
            const Text(
              "Neural Genie",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff6b009c),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              style: buildStyleFrom(),
              child: const Text(
                "Learn",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              style: buildStyleFrom(),
              child: const Text(
                "List",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ), //<- place where the image appears
    );
  }

  ButtonStyle buildStyleFrom() {
    return ElevatedButton.styleFrom(backgroundColor: const Color(0xff6b009c),minimumSize: 50);
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

class RedScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<RedScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const HomePage(),
        ),
      ),
    );

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.red),
        child: const Center(
          child: Expanded(
            child: SizedBox(),
          ),
        ),
      ), //<- place where the image appears
    );
  }
}

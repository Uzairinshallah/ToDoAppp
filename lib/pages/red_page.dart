import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';

class RedScreen extends StatefulWidget {
  final Color color;

  const RedScreen({super.key, required this.color});

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
      () {
        Navigator.of(context).pop();
        // Navigator.pushAndRemoveUntil(
        //     context,
        //     MaterialPageRoute(builder: (context) => const HomePage()),
        //     (route) => false);
      },
    );

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: widget.color),
          child: const SizedBox(),
        ), //<- place where the image appears
      ),
    );
  }
}

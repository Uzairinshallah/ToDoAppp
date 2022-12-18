import 'package:flutter/material.dart';
import 'package:neural_genie/pages/learn_page.dart';
import 'package:neural_genie/util/app_text_style.dart';

import '../util/ccolors.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

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

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/complete.gif",
              width: 150,
              height: 100,
            ),
            Text(
              "Neural Genie",
              style: AppTextStyle.nunito(
                  style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Color(0xff6b009c),
              )),
            ),
            const SizedBox(
              height: 50,
            ),
            Card(
              margin: EdgeInsets.zero,
              clipBehavior: Clip.antiAlias,
              elevation: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const LearnPage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 95,
                  height: 35,
                  decoration: BoxDecoration(
                    color: CColors.themeColor,
                  ),
                  child: Center(
                    child: Text(
                      "Learn",
                      style: buildTextStyle(),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Card(
              margin: EdgeInsets.zero,
              clipBehavior: Clip.antiAlias,
              elevation: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const HomePage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 95,
                  height: 35,
                  decoration: BoxDecoration(
                    color: CColors.themeColor,
                  ),
                  child: Center(
                    child: Text(
                      "List",
                      style: buildTextStyle(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ), //<- place where the image appears
    );
  }

  TextStyle buildTextStyle() {
    return AppTextStyle.nunito(
        style: const TextStyle(fontSize: 25, color: Colors.white));
  }
}

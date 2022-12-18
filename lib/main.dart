import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neural_genie/pages/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'data/database.dart';

void main() async {
  await Hive.initFlutter();
 var box =  await Hive.openBox('mybox');
  await box.clear();
  runApp(
      DevicePreview(
        enabled: kDebugMode,
        builder: (context) => const MyApp(), //
      ));// Wrap your app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: SplashScreen(),
          ),
        );
      },
    );
  }
}

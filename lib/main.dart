import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile1/screen/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1080 / 2, 2400 / 2),
        builder: (context, _) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            ));
  }
}

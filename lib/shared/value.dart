import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Set<Color> accents = {
  const Color.fromARGB(255, 86, 117, 184),
  const Color(0xff625ABC),
  const Color(0xffDFAFAE),
  const Color(0xffAFD9FD),
  const Color(0xffB2AAC4),
};

Set<TextStyle> titleStyles = {
  TextStyle(fontSize: 100.sp, fontWeight: FontWeight.bold, color: Colors.white)
};

Set<TextStyle> subtitleStyles = {
  TextStyle(fontSize: 25.sp, fontWeight: FontWeight.normal, color: Colors.white)
};

Set<ButtonStyle> buttonStyles = {
  ButtonStyle(
      animationDuration: const Duration(milliseconds: 500),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      elevation: MaterialStateProperty.all(5),
      minimumSize: MaterialStateProperty.resolveWith((states) =>
          (states.contains(MaterialState.pressed))
              ? Size(160.w, 55.w)
              : Size(150.w, 50.w)),
      backgroundColor: MaterialStateProperty.resolveWith((states) =>
          (states.contains(MaterialState.pressed))
              ? Colors.white.withOpacity(0.3)
              : Colors.white)),
};

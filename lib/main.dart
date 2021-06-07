import 'package:first/screens/home/homescreen.dart';
import 'package:first/screens/main/mainresponsive.dart';
import 'package:first/screens/main/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.workSans().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: MainResponsive(),
    );
  }
}

import 'package:first/screens/main/mainresponsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => hidekeyboard(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          highlightColor: Colors.green,
          fontFamily: GoogleFonts.workSans().fontFamily,
          primarySwatch: Colors.blue,
        ),
        home: MainResponsive(),
      ),
    );
  }

  hidekeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(Get.context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus.unfocus();
    }
  }
}

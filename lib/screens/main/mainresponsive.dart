import 'package:first/screens/main/mainmobile.dart';
import 'package:first/screens/main/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileMain(),
      tablet: MobileMain(),
      desktop: MainScreen(),
    );
  }
}

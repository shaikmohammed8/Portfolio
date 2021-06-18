import 'package:first/screens/home/homemobile.dart';
import 'package:first/screens/home/homescreen.dart';
import 'package:first/screens/home/hometab.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      tablet: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: HomeTab(),
      ),
      desktop: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 100.0),
        child: HomeScreen(),
      ),
    );
  }
}

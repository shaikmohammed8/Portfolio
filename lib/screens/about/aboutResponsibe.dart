import 'package:first/screens/about/aboutmobile.dart';
import 'package:first/screens/about/aboutwidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      desktop: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: AboutScreen(),
      ),
      tablet: AboutScreen(),
    );
  }
}

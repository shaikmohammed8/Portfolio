import 'package:first/screens/portfolio/portfolio.dart';
import 'package:first/screens/portfolio/portfoliomobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortFolioResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PortFolioMobile(),
      tablet: PortFolio(),
      desktop: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 50.0),
        child: PortFolio(),
      ),
    );
  }
}

import 'package:first/screens/download/download.dart';

import 'package:first/screens/download/downloadmobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DownloadResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DownloadMObile(),
      tablet: Download(),
      desktop: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 16.0),
        child: Download(),
      ),
    );
  }
}

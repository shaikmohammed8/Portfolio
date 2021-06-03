import 'package:first/screens/contact/contact.dart';
import 'package:first/screens/contact/contactTab.dart';
import 'package:first/screens/contact/contactmobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactMobile(),
      tablet: ContactTab(),
      desktop: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: ContactScreen(),
      ),
    );
  }
}

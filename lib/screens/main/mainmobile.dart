import 'package:first/controllers/mainController.dart';
import 'package:first/screens/about/aboutResponsibe.dart';
import 'package:first/screens/contact/contactresponsive.dart';
import 'package:first/screens/home/homeresponsive.dart';
import 'package:first/screens/home/homescreen.dart';
import 'package:first/screens/portfolio/portfolioresponsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileMain extends StatelessWidget {
  var controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF020c1b),
        elevation: 0.0,
      ),
      drawer: Drawer(
          child: Container(
        color: Color(0xFF020c1b),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          DrawerHeader(
              child: Center(
            child: Text("{Mohammed}",
                style: TextStyle(color: Colors.white, fontSize: 25)),
          )),
          buildListTile(
            Icons.home_rounded,
            "Home",
            () {
              controller.changeToHome();
              Get.back();
            },
          ),
          buildListTile(
            Icons.person,
            "About",
            () {
              controller.cahngeToAbout();
              Get.back();
            },
          ),
          buildListTile(
            Icons.work,
            "Portfolio",
            () {
              controller.changeToPortFolio();
              Get.back();
            },
          ),
          buildListTile(
            Icons.phone_enabled_rounded,
            "Contact",
            () {
              controller.changeToContact();
              Get.back();
            },
          ),
        ]),
      )),
      body: Container(
        color: Color(0xFF020c1b),
        padding: EdgeInsets.only(top: 16, left: 40, right: 40),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                  controller: controller.controller,
                  scrollDirection: Axis.vertical,
                  children: [
                    HomeResponsive(),
                    AboutResponsive(),
                    PortFolioResponsive(),
                    ContactResponsive()
                  ],
                  onPageChanged: controller.onPageChanged),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(IconData iconData, String text, Function fun) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 5),
      child: ListTile(
        onTap: fun,
        minLeadingWidth: 15,
        leading: Icon(
          iconData,
          color: Color(0xFF26E07F),
        ),
        title: Align(
            alignment: Alignment.centerLeft,
            child: Text(text,
                style: TextStyle(color: Colors.white, fontSize: 18))),
      ),
    );
  }
}

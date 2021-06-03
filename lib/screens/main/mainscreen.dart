import 'package:first/controllers/mainController.dart';
import 'package:first/screens/about/aboutResponsibe.dart';
import 'package:first/screens/about/aboutwidget.dart';
import 'package:first/screens/contact/contact.dart';
import 'package:first/screens/contact/contactresponsive.dart';
import 'package:first/screens/home/homeresponsive.dart';
import 'package:first/screens/home/homescreen.dart';
import 'package:first/screens/portfolio/portfolioresponsive.dart';
import 'package:first/widgets/logos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  var controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF303030),
      backgroundColor: Color(0xFF020c1b).withOpacity(0.85),
      body: mainbuild(),
    );
  }

  Container mainbuild() {
    return Container(
      margin: EdgeInsets.all(22),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFF020c1b),
          spreadRadius: 0.01,
          blurRadius: 10,
        )
      ], color: Color(0xFF020c1b), borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.only(top: 16, left: 40, right: 40),
      child: Column(
        children: [
          Row(
            children: [
              Text("{Mohammed}",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              Spacer(),
              TextButton(
                  onPressed: controller.changeToHome,
                  child: Obx(
                    () => Text("Home",
                        style: TextStyle(
                            color: controller.index.value == 0
                                ? Color(0xFF26E07F)
                                : Colors.white,
                            fontSize: 18)),
                  )),
              SizedBox(
                width: 25,
              ),
              TextButton(
                  onPressed: controller.cahngeToAbout,
                  child: Obx(() => Text("About",
                      style: TextStyle(
                          color: controller.index.value == 1
                              ? Color(0xFF26E07F)
                              : Colors.white,
                          fontSize: 18)))),
              SizedBox(
                width: 25,
              ),
              TextButton(
                  onPressed: controller.changeToPortFolio,
                  child: Obx(() => Text("Portfolio",
                      style: TextStyle(
                          color: controller.index.value == 2
                              ? Color(0xFF26E07F)
                              : Colors.white,
                          fontSize: 18)))),
              SizedBox(
                width: 25,
              ),
              TextButton(
                  onPressed: controller.cahngeToContact,
                  child: Obx(() => Text("Contact",
                      style: TextStyle(
                          color: controller.index.value == 3
                              ? Color(0xFF26E07F)
                              : Colors.white,
                          fontSize: 18)))),
            ],
          ),
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
    );
  }
}

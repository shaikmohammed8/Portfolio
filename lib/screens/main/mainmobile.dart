import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:first/controllers/mainController.dart';
import 'package:first/screens/about/aboutResponsibe.dart';
import 'package:first/screens/contact/contactresponsive.dart';
import 'package:first/screens/home/homeresponsive.dart';
import 'package:first/screens/portfolio/portfolioresponsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileMain extends StatelessWidget {
  var fabkey = GlobalKey<FabCircularMenuState>();
  var controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Obx(
            () => Text(
              appbarTitle(controller.index.value),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          backgroundColor: Color(0xFF020c1b),
          elevation: 0.0,
        ),
        body: Container(
          color: Color(0xFF020c1b),
          padding: EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 8),
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
        floatingActionButton: FabCircularMenu(
            key: fabkey,
            fabOpenIcon: Icon(Icons.sort, color: Color(0xFF020c1b)),
            fabCloseIcon: Icon(Icons.clear, color: Color(0xFF26E07F)),
            fabSize: 50,
            ringColor: Color(0xFF154c79).withOpacity(0.3),
            fabCloseColor: Color(0xFF26E07F),
            fabOpenColor: Color(0xFF154c79).withOpacity(0.5),
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.email_rounded, color: Color(0xFF26E07F)),
                  onPressed: () {
                    controller.cahngeToContact();
                    if (fabkey.currentState.isOpen) {
                      fabkey.currentState.close();
                    }
                  }),
              IconButton(
                  icon: Icon(Icons.work_rounded, color: Color(0xFF26E07F)),
                  onPressed: () {
                    controller.changeToPortFolio();
                    if (fabkey.currentState.isOpen) {
                      fabkey.currentState.close();
                    }
                  }),
              IconButton(
                  icon: Icon(Icons.person_rounded, color: Color(0xFF26E07F)),
                  onPressed: () {
                    controller.cahngeToAbout();
                    if (fabkey.currentState.isOpen) {
                      fabkey.currentState.close();
                    }
                  }),
              IconButton(
                  icon: Icon(
                    Icons.home_rounded,
                    color: Color(0xFF26E07F),
                  ),
                  onPressed: () {
                    controller.changeToHome();
                    if (fabkey.currentState.isOpen) {
                      fabkey.currentState.close();
                    }
                  }),
            ]));
  }

  String appbarTitle(int index) {
    switch (index) {
      case 0:
        return "Home";
      case 1:
        return "About";
      case 2:
        return "Work";
      case 3:
        return "Contact";
        break;
      default:
        return "";
    }
  }
}

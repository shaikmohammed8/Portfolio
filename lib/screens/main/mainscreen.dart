import 'package:first/controllers/mainController.dart';
import 'package:first/screens/about/aboutResponsibe.dart';
import 'package:first/screens/contact/contactresponsive.dart';
import 'package:first/screens/download/downloadResponsive.dart';
import 'package:first/screens/home/homeresponsive.dart';
import 'package:first/screens/portfolio/portfolioresponsive.dart';
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
      decoration: BoxDecoration(
        color: Color(0xFF020c1b),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 40,
                    width: 40,
                  ),
                ),
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
                SizedBox(
                  width: 25,
                ),
                TextButton(
                    onPressed: controller.cahngeToDownload,
                    child: Obx(() => Text("Download",
                        style: TextStyle(
                            color: controller.index.value == 4
                                ? Color(0xFF26E07F)
                                : Colors.white,
                            fontSize: 18)))),
              ],
            ),
          ),
          Expanded(
            child: PageView(
                controller: controller.controller,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: children,
                onPageChanged: controller.onPageChanged),
          ),
        ],
      ),
    );
  }

  List<Widget> children = [
    HomeResponsive(),
    AboutResponsive(),
    PortFolioResponsive(),
    ContactResponsive(),
    DownloadResponsive()
  ];
}

import 'package:first/controllers/mainController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Logos extends StatelessWidget {
  var controller = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: () {
              controller.launchUrl(
                  "https://www.facebook.com/people/Shaik-Mohammed/100008539246804/");
            },
            child: Image.network(
              'https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              controller
                  .launchUrl("https://www.instagram.com/shaik_mohammed_/");
            },
            child: Image.network(
              'https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              controller.launchUrl("https://twitter.com/shaikMohammed58");
            },
            child: Image.network(
              'https://img.icons8.com/android/480/ffffff/twitter.png',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              controller.launchUrl("https://github.com/shaikmohammed8");
            },
            child: Image.network(
              'https://img.icons8.com/material-rounded/384/ffffff/github.png',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              controller.launchWhatsApp();
            },
            child: Image.network(
              'https://img.icons8.com/pastel-glyph/64/ffffff/whatsapp--v2.png',
              height: 30,
              width: 30,
            ),
          )
        ],
      ),
    );
  }
}

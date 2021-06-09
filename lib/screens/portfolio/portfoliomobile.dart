import 'package:first/consts.dart';
import 'package:first/controllers/mainController.dart';
import 'package:first/screens/animations/widgetanimator.dart';
import 'package:first/widgets/projectCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:flutter_card_swipper/widgets/flutter_page_indicator/flutter_page_indicator.dart';
import 'package:get/get.dart';

class PortFolioMobile extends StatelessWidget {
  var controller = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What can i do for you -",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 220,
            child: Swiper(
                autoplay: true,
                index: 1,
                autoplayDisableOnInteraction: true,
                loop: false,
                viewportFraction: 0.8,
                scale: 0.9,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return buildCard(
                      spesilizeDetail[index]['photo'],
                      index,
                      spesilizeDetail[index]['title'],
                      spesilizeDetail[index]['detail']);
                },
                itemCount: spesilizeDetail.length),
          ),
          SizedBox(height: 30),
          Text(
            "Some things i have build -",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: Swiper(
                index: 1,
                autoplay: true,
                autoplayDelay: 2000,
                autoplayDisableOnInteraction: true,
                loop: false,
                viewportFraction: 0.8,
                scale: 0.9,
                // pagination: new SwiperPagination(),
                //control: new SwiperControl(),
                outer: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return ProjectCard(
                    photo: projectsDetail[index]['photo'],
                    text: projectsDetail[index]['detail'],
                    title: projectsDetail[index]['title'],
                    height: 240,
                  );
                },
                itemCount: projectsDetail.length),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                controller.launchUrl("https://github.com/shaikmohammed8");
              },
              child: Text(
                "Go to github",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Color(0xFF26E07F),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Color(0xFF26E07F), width: 2)),
                  minimumSize: Size(150, 45)),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(String path, index, title, text) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Card(
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF154c79).withOpacity(0.5)),
            height: 150,
            width: 325,
            child: Column(
              children: [
                Image.asset(path, height: 50),
                SizedBox(height: 4),
                Text(
                  title,
                  overflow: TextOverflow.fade,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 5),
                Flexible(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    style: TextStyle(color: Colors.white60, fontSize: 14),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

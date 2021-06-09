import 'package:first/consts.dart';
import 'package:first/controllers/mainController.dart';
import 'package:first/screens/animations/widgetanimator.dart';
import 'package:first/widgets/projectCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PortFolio extends StatelessWidget {
  var controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return WidgetAnimator(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What can i do for you -",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 300,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return buildCard(
                        spesilizeDetail[index]['photo'],
                        index,
                        spesilizeDetail[index]['title'],
                        spesilizeDetail[index]['detail']);
                  },
                  separatorBuilder: (_, i) {
                    return VerticalDivider(width: 10);
                  },
                  itemCount: spesilizeDetail.length),
            ),
            SizedBox(height: 30),
            Text(
              "Some things i have build -",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 300,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return ProjectCard(
                      photo: projectsDetail[index]['photo'],
                      text: projectsDetail[index]['detail'],
                      title: projectsDetail[index]['title'],
                    );
                  },
                  separatorBuilder: (_, i) {
                    return VerticalDivider(width: 15);
                  },
                  itemCount: projectsDetail.length),
            ),
            SizedBox(
              height: 20,
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
      ),
    );
  }

  Card buildCard(String path, index, title, text) {
    return Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF154c79).withOpacity(0.5)),
          height: 300,
          width: 500,
          child: Column(
            children: [
              index == 3
                  ? Image.asset(
                      path,
                      height: 80,
                    )
                  : Image.asset(path),
              SizedBox(height: 10),
              Text(
                title,
                overflow: TextOverflow.fade,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                text,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: TextStyle(
                    letterSpacing: 1, color: Colors.white60, fontSize: 18),
              ),
            ],
          ),
        ));
  }
}
//#26E07F

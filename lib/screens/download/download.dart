import 'dart:html';

import 'package:first/screens/animations/widgetanimator.dart';
import 'package:first/widgets/projectCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Download extends StatefulWidget {
  const Download({Key key}) : super(key: key);

  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  var hover = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: WidgetAnimator(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "click to download the app-  (these are my smaple work)",
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      SizedBox(height: 10),
      SizedBox(
        height: 300,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return ProjectCard(
                photo: 'assets/images/socialthoughts.jpeg',
                text:
                    "This is a social thoughts app a social media app similar to Twitter and Instagram. Made with Flutter (for frontend) and nodejs,monogodb and socket.io (for backend)",
                title: "Social Thoughts",
                height: 300,
                onTap: () {
                  AnchorElement anchorElement = AnchorElement(
                      href:
                          'https://firebasestorage.googleapis.com/v0/b/mohammedraza.appspot.com/o/soical_thoughts.apk?alt=media&token=3562b917-780d-4fd3-bbf8-98ed6775ef23');
                  anchorElement.download = 'socialThoughts.apk';
                  anchorElement.click();
                },
                mouseCursor: SystemMouseCursors.click,
              );
            },
            separatorBuilder: (_, i) {
              return VerticalDivider(width: 10);
            },
            itemCount: 1),
      )
    ])));
  }
}

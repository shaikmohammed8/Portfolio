import 'dart:html';

import 'package:first/screens/animations/widgetanimator.dart';
import 'package:first/widgets/projectCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class DownloadMObile extends StatelessWidget {
  const DownloadMObile({Key key}) : super(key: key);

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
                photo: 'assets/images/socialthoughts.jpeg',
                text:
                    "This is a social media app similar to Twitter and Instagram. Made with Flutter (UI) and nodejs,monogodb and socket.io (Backend)",
                title: "Social Thoughts",
                height: 250,
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
            itemCount: 1),
      )
    ])));
  }
}

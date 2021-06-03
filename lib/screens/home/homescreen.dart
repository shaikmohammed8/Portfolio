import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:first/controllers/mainController.dart';
import 'package:first/screens/animations/widgetanimator.dart';
import 'package:first/widgets/logos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  var controller = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: WidgetAnimator(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Hey, my name is",
                    style: TextStyle(fontSize: 18, color: Color(0xFF26E07F)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mohammed raza",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: AnimatedTextKit(
                        pause: Duration(milliseconds: 1),
                        repeatForever: true,
                        animatedTexts: [
                          FadeAnimatedText(
                            "And I am a Moblie app developer",
                            duration: Duration(milliseconds: 3000),
                            textStyle: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                color: Colors.white38),
                            //   colors: [Colors.white24, Colors.white60],
                          )
                        ]),
                  ),
                  Logos(),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Contact me",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Color(0xFF26E07F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side:
                                BorderSide(color: Color(0xFF26E07F), width: 2)),
                        minimumSize: Size(150, 45)),
                  ),
                ]),
                Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: WidgetAnimator(
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 100,
                          backgroundImage: AssetImage("images/me.jpg")),
                    ))
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Center(
                child: Text(
              """I am a mobile app developer and a cs student 
          I develope apps for both android and ios using flutter if you have any idea i will convert it to a very beautiful app if you want to chek my work you can see below""",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            )),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: IconButton(
                  icon: Icon(CupertinoIcons.chevron_compact_down,
                      size: 70, color: Colors.white24),
                  onPressed: controller.cahngeToAbout),
            )
          ],
        ),
      ),
    );
  }
}

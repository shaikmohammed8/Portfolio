import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:first/controllers/mainController.dart';
import 'package:first/widgets/logos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTab extends StatelessWidget {
  var controller = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
                child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFF26E07F), width: 3)),
              child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 90,
                  backgroundImage: AssetImage("assets/images/me.jpg")),
            )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hey, my name is",
              style: TextStyle(fontSize: 18, color: Color(0xFF26E07F)),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            // Text(
            //   "Mohammed raza",
            //   style: TextStyle(
            //       fontSize: 25,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white),
            // ),

            AnimatedTextKit(
                pause: Duration(milliseconds: 1000),
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Mohammed raza",
                    speed: Duration(milliseconds: 300),
                    textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ]),
            SizedBox(
              height: 5,
            ),
            Text(
              "I am a Moblie app developer",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white24),
            ),
            Logos(),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  controller.cahngeToContact();
                },
                child: Text(
                  "Contact me",
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
          ]),
          SizedBox(
            height: 35,
          ),
          Center(
              child: Text(
            "I am a mobile app developer and a cs student I develope apps for both android and ios using flutter if you have any idea i will convert it to an very beautiful app if you want to chek my work you can see below",
            style: TextStyle(
                fontSize: 22,
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
    );
  }
}

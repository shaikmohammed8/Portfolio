import 'package:first/controllers/mainController.dart';
import 'package:first/screens/contact/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:get/get.dart';

class ContactMobile extends StatelessWidget {
  var controller = Get.find<MainController>();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Intrested in working together? Fill out the form below with some info about you and your project and i will get back to you as soon as i can-",
            style: TextStyle(fontSize: 17, color: Colors.white60),
          ),
          SizedBox(height: 20),
          edittextbuild("Name", Icons.person, controller.nameController, (val) {
            if (GetUtils.isUsername(val)) {
              return null;
            } else
              return "Please provide a valide name";
          }, TextInputType.name),
          SizedBox(height: 12),
          edittextbuild("Email", Icons.mail, controller.emailController, (val) {
            if (GetUtils.isEmail(val)) {
              return null;
            } else
              return "Please provide a valide Email";
          }, TextInputType.emailAddress),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: edittextbuild("Budget", Icons.attach_money_rounded,
                    controller.budgetController, (String val) {
                  if (val.length != 0) {
                    return null;
                  } else
                    return "Please Enter budget";
                }, TextInputType.number, width: 150),
              ),
              Center(
                child: edittextbuild("Days", Icons.calendar_today_rounded,
                    controller.daysController, (String val) {
                  if (val.length != 0) {
                    return null;
                  } else
                    return "this field is mendatory";
                }, TextInputType.number, width: 150),
              )
            ],
          ),
          SizedBox(height: 12),
          Center(
            child: Container(
              height: 190,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              width: 1050,
              child: TextFormField(
                controller: controller.projectController,
                maxLength: 1000,
                validator: (val) {
                  if (val.length > 50) {
                    return null;
                  } else
                    return "Please Enter atleast 50 characters";
                },
                maxLines: 15,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
                decoration: InputDecoration(
                    counterStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color(0xFF154c79).withOpacity(0.2),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 140),
                      child: Icon(
                        Icons.mode_edit_outline_rounded,
                        color: Color(0xFF26E07F),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(015),
                    hintText: "tell me something about your project",
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.white38,
                    ),
                    focusColor: Color(0xFF0a192f),
                    focusedBorder: textInputBorder(),
                    enabledBorder: textInputBorder(),
                    errorBorder: textInputBorder(),
                    focusedErrorBorder: textInputBorder()),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: ElevatedButton(
              onPressed: onSend,
              child: Text(
                "Send",
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
          SizedBox(height: 18),
          Text(
            "Other Options -",
            style: TextStyle(fontSize: 20, color: Colors.white60),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 180,
            child: Swiper(
              itemCount: 3,
              autoplay: true,
              index: 1,
              autoplayDisableOnInteraction: true,
              loop: false,
              viewportFraction: 0.8,
              scale: 0.8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return buildCard(
                    otherOptiosns[index]['photo'],
                    otherOptiosns[index]['text'],
                    otherOptiosns[index]['platform'], () {
                  controller.launchUrl(otherOptiosns[index]['url']);
                });
              },
            ),
          ),
        ],
      ),
    ));
  }

  List otherOptiosns = [
    {
      'photo': 'images/icons8-mail-128.png',
      'text': 'mohammedrazachandwala@gmail.com',
      'url': 'mailto:mohammedrazachandwala@gmail.com',
      'platform': 'mail'
    },
    {
      'photo': 'images/icons8-call-100.png',
      'text': '9875719540',
      'url': 'tel:+919875179540',
      'platform': 'call'
    },
    {
      'photo': 'images/fiverr.png',
      'text': 'mohammedraza58',
      'url': 'https://www.fiverr.com/mohammedraza58',
      'platform': 'fivver.com'
    }
  ];

  onSend() {
    if (formkey.currentState.validate()) {
      controller.sendDetails();
    }
  }
}

import 'package:first/controllers/mainController.dart';
import 'package:first/screens/contact/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactScreen extends StatelessWidget {
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
            "Intrested in working together? Fill out the form below with some info about you and your project and i will get back to you as soon as i can",
            style: TextStyle(fontSize: 20, color: Colors.white60),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              edittextbuild("Name", Icons.person, controller.nameController,
                  (val) {
                if (GetUtils.isUsername(val)) {
                  return null;
                } else
                  return "Please provide a valide name";
              }, TextInputType.name),
              edittextbuild("Email", Icons.mail, controller.emailController,
                  (val) {
                if (GetUtils.isEmail(val)) {
                  return null;
                } else
                  return "Please provide a valide Email";
              }, TextInputType.emailAddress),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              edittextbuild("Budget", Icons.attach_money_rounded,
                  controller.budgetController, (String val) {
                if (val.length != 0) {
                  return null;
                } else
                  return "Please Enter budget";
              }, TextInputType.number),
              edittextbuild("Days", Icons.calendar_today_rounded,
                  controller.daysController, (String val) {
                if (val.length != 0) {
                  return null;
                } else
                  return "this field is mendatory";
              }, TextInputType.number)
            ],
          ),
          SizedBox(height: 20),
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
            height: 10,
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
          SizedBox(height: 20),
          Text(
            "Other Options -",
            style: TextStyle(fontSize: 20, color: Colors.white60),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCard("images/icons8-mail-128.png",
                  "mohammedrazachandwala@gmail.com", "mail", () {
                controller
                    .launchUrl("mailto:mohammedrazachandwala@gmail.comyo");
              }),
              buildCard("images/icons8-call-100.png", "+919875719540", 'call',
                  () {
                controller.launchUrl("tel:9875179540");
              }),
              buildCard("images/fiverr.png", "mohammedraza58", 'fivver.com',
                  () {
                controller.launchUrl("https://www.fiverr.com/mohammedraza58");
              }),
            ],
          ),
        ],
      ),
    ));
  }

  onSend() {
    if (formkey.currentState.validate()) {
      controller.sendDetails();
    }
  }
}

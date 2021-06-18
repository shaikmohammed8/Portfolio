import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class MainController extends GetxController {
  var controller = PageController();
  var index = 0.obs;
  var scrolcontroller = TrackingScrollController();
  var isHoverd = false.obs;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var daysController = TextEditingController();
  var budgetController = TextEditingController();
  var projectController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void changeToHome() {
    index.value = 0;

    controller.animateToPage(index.value,
        duration: Duration(milliseconds: 700), curve: Curves.linearToEaseOut);
  }

  void changeToPortFolio() {
    index.value = 2;

    controller.animateToPage(index.value,
        duration: Duration(milliseconds: 700), curve: Curves.linearToEaseOut);
  }

  void cahngeToAbout() {
    index.value = 1;
    controller.animateToPage(index.value,
        duration: Duration(milliseconds: 700), curve: Curves.linearToEaseOut);
  }

  void cahngeToContact() {
    index.value = 3;
    controller.animateToPage(index.value,
        duration: Duration(milliseconds: 700), curve: Curves.linearToEaseOut);
  }

  void onPageChanged(int indexx) {
    index.value = indexx;
  }

  void sendDetails() async {
    try {
      await FirebaseFirestore.instance.collection("projectDetails").doc().set({
        'name': nameController.text,
        'email': emailController.text,
        'budget': budgetController.text,
        'days': daysController.text,
        'project': projectController.text
      });
      nameController.clear();
      emailController.clear();
      budgetController.clear();
      daysController.clear();
      projectController.clear();
    } catch (e) {
      Get.defaultDialog(title: "Error", content: Text(e.message));
    }
  }

  launchUrl(String url) async {
    await canLaunch(url)
        ? await launch(url)
        : Get.defaultDialog(
            title: "Error", content: Text('Could not launch $url'));
  }

  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+918440022708',
      text: "Hey! I came from you website and my name is ",
    );
    // Convert the WhatsAppUnilink instance to a string.
    // Use either Dart's string interpolation or the toString() method.
    // The "launch" method is part of "url_launcher".
    await launch('$link');
  }
}

import 'package:flutter/material.dart';

Container edittextbuild(
    String text, IconData icon, controller, Function val, TextInputType type,
    {double width = 500}) {
  return Container(
    //height: 45,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
    width: width,
    child: TextFormField(
      keyboardType: type,
      validator: val,
      controller: controller,
      style: TextStyle(
        fontSize: 16,
        color: Colors.white70,
      ),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        focusedErrorBorder: textInputBorder(),
        prefixIcon: Icon(
          icon,
          color: Color(0xFF26E07F),
        ),
        contentPadding: EdgeInsets.all(015),
        hintText: text,
        hintStyle: TextStyle(
          fontSize: 16,
          color: Colors.white38,
        ),
        filled: true,
        fillColor: Color(0xFF154c79).withOpacity(0.2),
        focusColor: Color(0xFF0a192f),
        errorBorder: textInputBorder(),
        focusedBorder: textInputBorder(),
        enabledBorder: textInputBorder(),
      ),
    ),
  );
}

Widget buildCard(String path, String text, String platform, Function fun) {
  return InkWell(
    onTap: fun,
    child: Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFF154c79).withOpacity(0.2)),
      height: 170,
      width: 250,
      child: Column(
        children: [
          Image.asset(
            path,
            height: 70,
            width: 70,
          ),
          Text(text, style: TextStyle(color: Colors.white70, fontSize: 16)),
          Spacer(),
          Text(platform, style: TextStyle(color: Colors.white24, fontSize: 12))
        ],
      ),
    ),
  );
}

OutlineInputBorder textInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: Color(0xFF154c79), width: 2));
}

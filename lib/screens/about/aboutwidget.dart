import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AboutScreen extends StatelessWidget {
  final sizedboxHeight, fontsize;

  AboutScreen({this.sizedboxHeight, this.fontsize});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Personal Details",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Table(
            children: [
              TableRow(children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: aboutTile("Name", "Mohammed")),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: aboutTile("Age", '20')),
                // Container(),
              ]),
              TableRow(children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: aboutTile("Location", "Mumbai india")),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: aboutTile("Education", 'B.C.A')),
                // Container(),
              ]),
              TableRow(children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: aboutTile("Language", "Hindi-English")),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: aboutTile("Job", 'Freelancer')),
                // Container(),
              ])
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Skills",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              percentageWidget("80%", "Java", 2500, 0.8),
              percentageWidget("76%", "Dart", 2700, 0.76),
              percentageWidget("56%", "Html,css,javascript", 2200, 0.56),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              percentageWidget("78%", "Android", 2000, 0.78),
              percentageWidget("90%", "Flutter", 2200, 0.9),
              percentageWidget("62%", "Web", 2500, 0.62),
            ],
          )
        ],
      ),
    );
  }

  CircularPercentIndicator percentageWidget(
      String percent, String text, int duretion, double circle) {
    return CircularPercentIndicator(
      radius: 150.0,
      lineWidth: 17.0,
      backgroundColor: Colors.white10,
      animation: true,
      animationDuration: duretion,
      percent: circle,
      center: new Text(
        percent,
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
      ),
      footer: new Text(
        "\n$text",
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),
      ),
      curve: Curves.elasticInOut,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: Color(0xFF26E07F),
    );
  }

  Row aboutTile(String text1, String text2) {
    return Row(children: [
      Icon(
        Icons.fast_forward_rounded,
        color: Color(0xFF26E07F),
      ),
      SizedBox(
        width: 5,
      ),
      Text(text1, style: TextStyle(color: Colors.white, fontSize: 18)),
      SizedBox(
        width: 20,
      ),
      Text(
        text2,
        style: TextStyle(
            color: Colors.white54, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}

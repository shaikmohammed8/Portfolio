import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Personal Details",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          Table(
            children: [
              TableRow(children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: aboutTile("Name", "Mohammed")),

                // Container(),
              ]),
              TableRow(children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: aboutTile("Age", '20')),
              ]),
              TableRow(children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: aboutTile("Education", 'B.C.A')),
              ]),
              TableRow(children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: aboutTile("Job", 'Freelancer')),
              ]),
              TableRow(children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: aboutTile("Location", "Mumbai india")),

                // Container(),
              ]),
              TableRow(children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: aboutTile("Language", "Hindi-English")),
              ])
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Skills",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              percentageWidget("80%", "Java", 2500, 0.8),
              percentageWidget("78%", "Android", 2000, 0.78),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              percentageWidget("56%", "Html,css,JS", 2200, 0.56),
              percentageWidget("62%", "Web", 2500, 0.62),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              percentageWidget("76%", "Dart", 2700, 0.76),
              percentageWidget("90%", "Flutter", 2200, 0.9),
            ],
          )
        ],
      ),
    );
  }

  CircularPercentIndicator percentageWidget(
      String percent, String text, int duretion, double circle) {
    return CircularPercentIndicator(
      radius: 80.0,
      lineWidth: 7.0,
      backgroundColor: Colors.white10,
      animation: true,
      animationDuration: duretion,
      percent: circle,
      center: new Text(
        percent,
        style: new TextStyle(fontSize: 18.0, color: Colors.white),
      ),
      footer: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: new Text(
          "$text",
          style: new TextStyle(fontSize: 16.0, color: Colors.white),
        ),
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
        color: Colors.green,
      ),
      SizedBox(
        width: 5,
      ),
      Text(text1, style: TextStyle(color: Colors.white, fontSize: 15)),
      SizedBox(
        width: 15,
      ),
      Text(
        text2,
        style: TextStyle(
            color: Colors.white54, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}

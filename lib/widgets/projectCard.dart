import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  final photo, text, title, height;
  ProjectCard({this.photo, this.text, this.title, this.height = 300});

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        mouseCursor: SystemMouseCursors.allScroll,
        onHover: (t) {
          setState(() {
            hover = t;
          });
        },
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF0a192f)),
              height: widget.height,
              width: 510,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: hover
                      ? Opacity(
                          opacity: 0.9,
                          child: Image.asset(
                            widget.photo,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Stack(
                          fit: StackFit.expand,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Image.asset(
                                widget.photo,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width > 700
                                          ? 90
                                          : null,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(5),
                                  color: Color(0xFF0a192f).withOpacity(0.8),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Text(
                                          widget.title,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          widget.text,
                                          overflow: TextOverflow.fade,
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ))),
        ));
  }
}

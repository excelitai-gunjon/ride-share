import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:googler_maps_in_flutter/tusher/about.dart';
import 'package:googler_maps_in_flutter/tusher/language.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Language()));
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Color(0xfffe8550),
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 65),
          child: Text(
            "Help",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .26,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xfff4ebeb),
                              child: IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.solidBell,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                  onPressed: () {}),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Report a problem",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 85),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: .5,
                                  child: CupertinoSwitch(
                                    value: _switchValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _switchValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => About()));
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xfffff6d7),
                                child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.youtubeSquare,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    onPressed: () {}),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Help center",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 70),
                        Row(
                          children: [
                            Transform.scale(
                              scale: .5,
                              child: CupertinoSwitch(
                                trackColor: Colors.grey,
                                value: false,
                                onChanged: null,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xfffff4ef),
                              child: IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.language,
                                    color: Colors.blue,
                                    size: 18,
                                  ),
                                  onPressed: () {}),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "FAQ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 70),
                        Row(
                          children: [
                            Transform.scale(
                              scale: .5,
                              child: CupertinoSwitch(
                                trackColor: Colors.grey,
                                value: false,
                                onChanged: null,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

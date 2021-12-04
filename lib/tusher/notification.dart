import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:googler_maps_in_flutter/tusher/currency.dart';
import 'package:googler_maps_in_flutter/tusher/settings.dart';

class Notification1 extends StatefulWidget {
  const Notification1({Key? key}) : super(key: key);

  @override
  _Notification1State createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
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
            "Notification Settings",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .28,
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
                                      FontAwesomeIcons.bell,
                                      color: Colors.deepOrange,
                                      size: 18,
                                    ),
                                    onPressed: () {}),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Promotional Notification",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 45),
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
                                      builder: (context) => Currency()));
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
                                  "App notification",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
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
                                "Lock screen notification",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 45),
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
      ),
    );
  }
}

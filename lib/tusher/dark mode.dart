import 'package:flutter/material.dart';
import 'package:googler_maps_in_flutter/tusher/about.dart';

import 'edit_location.dart';

class Dark extends StatefulWidget {
  const Dark({Key? key}) : super(key: key);

  @override
  _DarkState createState() => _DarkState();
}

class _DarkState extends State<Dark> {
  bool _value = true;
  int val = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
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
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Text("Dark Mode",
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
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height* .26,
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
              child: Column(
                children: [
                  ListTile(
                    title: Text("Off",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Radio(
                      value: _value,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = val;
                        });
                      },
                      //activeColor: Colors.orange,
                    ),
                  ),
                  ListTile(
                    title: Text("On",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = 1;
                        });
                      },
                      activeColor: Colors.orange,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>Location1()));
                    },
                    child: ListTile(
                      title: Text("System",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      leading: Radio(
                        value: _value,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = val;
                          });
                        },
                        //activeColor: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:googler_maps_in_flutter/tusher/saved%20location.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("New Password",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
             ),
            ),
            SizedBox(height: 10,),
            Text("Enter new password",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text("Current Password",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height* .06,
              width: MediaQuery.of(context).size.width* .95,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.rotate(
                    angle: 60,
                    child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.key, color: Colors.black, size: 13,),
                        onPressed: () {}
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                    ],
                  ),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.eye, color: Colors.green, size: 14,),
                      onPressed: () {}
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Text("New Password",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height* .06,
              width: MediaQuery.of(context).size.width* .95,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.rotate(
                    angle: 60,
                    child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.key, color: Colors.black, size: 13,),
                        onPressed: () {}
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                    ],
                  ),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.lowVision, color: Colors.green, size: 14,),
                      onPressed: () {}
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("Confirmed Password",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height* .06,
              width: MediaQuery.of(context).size.width* .95,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.rotate(
                    angle: 60,
                    child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.key, color: Colors.black, size: 13,),
                        onPressed: () {}
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(FontAwesomeIcons.solidCircle, color: Colors.black, size: 8,),
                      ),
                    ],
                  ),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.lowVision, color: Colors.green, size: 14,),
                      onPressed: () {}
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Password()));
                },
                child: Container(
                  height: 35,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Color(0xffFE8550),
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
                    padding: const EdgeInsets.symmetric(horizontal: 90,vertical: 10),
                    child: Text('Update',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                       fontSize: 10,
                      color: Colors.white,
                    ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:googler_maps_in_flutter/tusher/wallet2.dart';

class Wallet1 extends StatefulWidget {
  const Wallet1({Key? key}) : super(key: key);

  @override
  _Wallet1State createState() => _Wallet1State();
}

class _Wallet1State extends State<Wallet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffcfcfc),
        leading: GestureDetector(
          onTap: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => FindingRide()));
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
            "Wallet",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .38,
                width: MediaQuery.of(context).size.width * .90,
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Payment Method",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xfff4ebeb),
                                child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.creditCard,
                                      color: Colors.deepOrange,
                                      size: 18,
                                    ),
                                    onPressed: () {}),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Card",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.ellipsisV,
                                color: Colors.black,
                                size: 14,
                              ),
                              onPressed: () {}),
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
                                backgroundColor: Color(0xfff4ebeb),
                                child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.creditCard,
                                      color: Colors.deepOrange,
                                      size: 18,
                                    ),
                                    onPressed: () {}),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Bkash",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.ellipsisV,
                                color: Colors.black,
                                size: 14,
                              ),
                              onPressed: () {}),
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
                                backgroundColor: Color(0xfff4ebeb),
                                child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.creditCard,
                                      color: Colors.deepOrange,
                                      size: 18,
                                    ),
                                    onPressed: () {}),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Cash",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.ellipsisV,
                                color: Colors.black,
                                size: 14,
                              ),
                              onPressed: () {}),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Wallet2()));
                        },
                        child: Row(
                          children: [
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.orange,
                                size: 18,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Add Payment Method',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * .21,
                width: MediaQuery.of(context).size.width * .90,
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
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Voucher",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12,
                        ),
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
                                backgroundColor: Color(0xfff4ebeb),
                                child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.receipt,
                                      color: Colors.green,
                                      size: 18,
                                    ),
                                    onPressed: () {}),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Voucher",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Wallet2()));
                        },
                        child: Row(
                          children: [
                            IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.orange,
                                  size: 18,
                                ),
                                onPressed: () {}),
                            Text(
                              'Add Payment Method',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .21,
                width: MediaQuery.of(context).size.width * .90,
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
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Promotions",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12,
                        ),
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
                                backgroundColor: Color(0xfff4ebeb),
                                child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.tag,
                                      color: Colors.deepOrange,
                                      size: 18,
                                    ),
                                    onPressed: () {}),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Promotions",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Wallet2()));
                        },
                        child: Row(
                          children: [
                            IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.orange,
                                  size: 18,
                                ),
                                onPressed: () {}),
                            Text(
                              'Add Payment Method',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
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

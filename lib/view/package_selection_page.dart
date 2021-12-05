import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:googler_maps_in_flutter/view/carousel_slider_example.dart';
import 'package:googler_maps_in_flutter/view/find_your_ride_page.dart';

class PackageSelection extends StatefulWidget {
  const PackageSelection({Key? key}) : super(key: key);
  @override
  _PackageSelectionState createState() => _PackageSelectionState();
}
class _PackageSelectionState extends State<PackageSelection> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563,-122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(23.748224445812014, 90.40275559163155),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(23.748224445812014, 90.40275559163155),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  int level=2;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   height: size.height,
          //   width: size.width,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage("images/map2.png"), fit: BoxFit.fill,
          //     ),
          //   ),
          // ),
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Get.back(result: "ok");
                },
                child: CircleAvatar(
                  backgroundColor: Color(0xfffe8550),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * .4,
              width: size.width,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: _listView(size.height),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          height: size.height,
                          width: size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xfffe8550),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              //padding:EdgeInsets.all(20)
                            ),
                            onPressed: () {
                              Get.to(FindingRide());
                            },
                            child: Text("Search"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listView(var size) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: size, //200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  level=1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Stack(
                  children: [
                    Container(
                      width: 140.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: level==1?Color(0xfffe8550):Colors.transparent,
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.2),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(0,0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("images/image 28.png"),
                              )

                                  //color: Color(0xfffe8550),
                                  //shape: BoxShape.circle,
                                  ),
                            ),
                            Text(
                              "Economy",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "US\$90",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  FontAwesomeIcons.userAlt,
                                  color: Color(0xfffe8550),
                                  size: 10,
                                ),
                                Text(
                                  " 4",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 140.0,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: level!=1?Colors.white10.withOpacity(.4):Colors.transparent,
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0,0), // changes position of shadow
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  level=2;
                });
              },
              child: Stack(
                children: [
                  Container(
                    width: 140.0,
                    //color: Colors.orange,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //Color(0xfffff4ef),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: level==2?Color(0xfffe8550):Colors.transparent,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0,0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image 28.png"),
                              ),
                              //color: Color(0xfffe8550),
                              //shape: BoxShape.circle,
                            ),
                          ),
                          Text(
                            "Premium",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "US\$90",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.userAlt,
                                color: Color(0xfffe8550),
                                size: 10,
                              ),
                              Text(
                                " 4",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 140.0,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: level!=2?Colors.white10.withOpacity(.4):Colors.transparent,
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0,0), // changes position of shadow
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  level=3;
                });
              },
              child: Stack(
                children: [
                  Container(
                    width: 140.0,
                    //color: Colors.orange,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //Color(0xfffff4ef),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: level==3?Color(0xfffe8550):Colors.transparent,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0,0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image 28.png"),
                              ),
                              //color: Color(0xfffe8550),
                              //shape: BoxShape.circle,
                            ),
                          ),
                          Text(
                            "Family",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "US\$90",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.userAlt,
                                color: Color(0xfffe8550),
                                size: 10,
                              ),
                              Text(
                                " 4",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 140.0,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: level!=3?Colors.white10.withOpacity(.4):Colors.transparent,
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0,0), // changes position of shadow
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            //Container(width: 160.0, color: Colors.yellow,),
          ],
        ));
  }
}

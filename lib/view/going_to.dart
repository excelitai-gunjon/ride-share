import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:googler_maps_in_flutter/view/finish_ride.dart';
import 'package:googler_maps_in_flutter/view/show_Notifications.dart';

class GoingTo extends StatelessWidget {
  GoingTo({Key? key}) : super(key: key);

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
          //         image: AssetImage("images/map2.png"), fit: BoxFit.fill),
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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Container(
                height: size.height * .1,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                //alignment: Alignment.center,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hey Zoro!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffe8550),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Rider is about to reach in ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "10 mins!",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xfffe8550),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          //padding:EdgeInsets.all(20)
                        ),
                        onPressed: () {
                          //Get.to(FinishRide());
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  dialogBackgroundColor: Colors.transparent,
                                ),
                                child: AlertDialog(
                                  //backgroundColor: Colors.red,
                                  contentPadding: EdgeInsets.zero,
                                  title: Center(
                                    child: Text(""),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Hurrah(),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );

                        },
                        child: Text("Drop Here"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff86817e),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          //padding:EdgeInsets.all(20)
                        ),
                        onPressed: () {
                          //Get.to(FinishRide());
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  dialogBackgroundColor: Colors.transparent,
                                ),
                                child: AlertDialog(
                                  //backgroundColor: Colors.red,
                                  contentPadding: EdgeInsets.zero,
                                  title: Center(
                                    child: Text(""),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Report(),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Change Route"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

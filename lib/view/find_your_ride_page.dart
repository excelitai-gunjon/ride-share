import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:googler_maps_in_flutter/view/rider_page.dart';
import 'package:googler_maps_in_flutter/view/show_Notifications.dart';

class FindingRide extends StatelessWidget {
   FindingRide({Key? key}) : super(key: key);

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
          //         image: AssetImage("images/map2.png"), fit: BoxFit.cover),
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
              child: Row(
                children: [
                  InkWell(
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
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      "Finding Your Ride",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.center,
          //   child: SizedBox(
          //     height: size.height * .8,
          //     width: size.width * .9,
          //     child: Image.asset("images/Vector 22.png"),
          //   ),
          // ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: size.height * .1,
                child: InkWell(
                  onTap: () {
                    //Get.to(Rider());
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
                                TrafalgarLow(),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xffee4646),
                        child: Icon(
                          FontAwesomeIcons.times,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Cancel",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:googler_maps_in_flutter/model/home_scroll_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:googler_maps_in_flutter/view/routeSelection_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/map1.png"), fit: BoxFit.fill)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: size.height * .5,
                width: size.width * .9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xfffff4ef),
                                  shape: BoxShape.circle),
                              child: Icon(
                                FontAwesomeIcons.equals,
                                size: 15,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Color(0xfffff4ef),
                                  borderRadius: BorderRadius.circular(50)),
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        FontAwesomeIcons.mapMarkerAlt,
                                        size: 15,
                                        color: Colors.deepOrangeAccent,
                                      ),
                                    ),
                                    Text(
                                      "Current Location",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Find a ride!",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Get.to(RouteSelection());
                          },
                          child: Container(
                            height: 40,
                            width: size.width,
                            decoration: BoxDecoration(
                              //color: Color(0xfffff4ef),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Color(0xfffff4ef),
                              ),
                            ),
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Find a ride!",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: Colors.grey,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Saved Locations",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "MANAGE",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child: _listView(
                            size.height,
                          )
                          //_homeScroll(size.height),
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )
          // GoogleMap(
          //   onMapCreated: _onMapCreated,
          //   initialCameraPosition: CameraPosition(
          //     target: _center,
          //     zoom: 11.0,
          //   ),
          // ),
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
              onTap: () {},
              child: Container(
                width: 130.0,
                decoration: BoxDecoration(
                  color: Color(0xfffff4ef),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color(0xfffe8550), shape: BoxShape.circle),
                        child: Icon(
                          FontAwesomeIcons.home,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: Color(0xfffe8550),
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                      Text(
                        "23 minutes",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 8),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 130.0,
                //color: Colors.orange,
                decoration: BoxDecoration(
                  color: Color(0xfffff4ef),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xfffe8550),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          FontAwesomeIcons.shoppingBag,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Text(
                        "Office",
                        style: TextStyle(
                            color: Color(0xfffe8550),
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                      Text(
                        "50 minutes",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 8),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 130.0,
                //olor: Colors.pink,
                decoration: BoxDecoration(
                  color: Color(0xfffff4ef),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            //Container(width: 160.0, color: Colors.yellow,),
          ],
        ));
  }

  Widget _homeScroll(final size) {
    return SizedBox(
      height: size,
      //width: 600.w,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 60.w / 2,
            //height: size,
          );
        },
        padding: EdgeInsets.symmetric(horizontal: 23),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: RecentItemsList.list.length,
        itemBuilder: (context, index) {
          RecentItemsList data = RecentItemsList.list[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 300.w,
                height: size,
                decoration: BoxDecoration(
                  color: Color(0xfffff4ef),
                  // image: DecorationImage(
                  //     image: AssetImage(data.imagePath!.toString()),
                  //     fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12),
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 5,
                  //   )
                  // ]
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:googler_maps_in_flutter/model/home_scroll_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final size=MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/map1.png"),
                  fit: BoxFit.fill
                )
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: size.height*.5,
                  width: size.width*.9,
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
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xfffff4ef),
                                shape: BoxShape.circle
                              ),
                              child: Icon(FontAwesomeIcons.equals,size: 15,),
                            ),
                            Container(
                              height: 40,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Color(0xfffff4ef),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(FontAwesomeIcons.mapMarkerAlt,size: 15,color: Colors.deepOrangeAccent,),
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Find a ride!",
                          style:
                          Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.black,fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(
                          height: 40,
                          width: size.width,
                          decoration: BoxDecoration(
                              //color: Color(0xfffff4ef),
                              borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(0xfffff4ef))
                          ),
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "Find a ride!",
                              style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Saved Locations",
                              style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: Colors.black,fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "MANAGE",
                              style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: Colors.deepOrangeAccent,fontSize: 10,fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        _homeScroll()
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
  Widget _homeScroll(){
    return SizedBox(
      height: 500.h,
      //width: 600.w,
      child: ListView.separated(
        separatorBuilder: (context,index){
          return SizedBox(width: 60.w/2,);
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
                height: 300.h,
                decoration: BoxDecoration(
                  color: Colors.grey,
                    // image: DecorationImage(
                    //     image: AssetImage(data.imagePath!.toString()),
                    //     fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                      )
                    ]),
              ),
              SizedBox(height: 25.h,),



            ],
          );
        },
      ),
    );
  }
}
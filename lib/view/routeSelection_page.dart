import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:googler_maps_in_flutter/view/package_selection_page.dart';

class RouteSelection extends StatelessWidget {
  const RouteSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: size.height * .2,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Get.to(RouteSelection());
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      //color: Color(0xfffff4ef),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: Color(0xfffff4ef),
                                      ),
                                    ),
                                    //alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: InkWell(
                                        onTap: (){
                                          Get.to(RouteSelection());
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.mapMarkerAlt,
                                              color: Color(0xfffe8550),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Corrent Location",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .copyWith(
                                                        color: Colors.grey,
                                                      ),
                                                ),
                                                Text(
                                                  "967 Excel It Ai, Coram,11727",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Get.to(RouteSelection());
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Container(
                                      height:
                                          MediaQuery.of(context).size.height,
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(0),
                                          prefixIcon: Icon(
                                            FontAwesomeIcons.solidFlag,
                                            color: Colors.green,
                                          ),
                                          // SizedBox(
                                          //   height: 1.h,
                                          //   width: 1.w,
                                          //   child:
                                          //   Image.asset(
                                          //     "images/icon_flag.png",
                                          //     fit: BoxFit.fill,
                                          //     color: Colors.teal,
                                          //   ),
                                          // ),
                                          //labelText: "Enter Email",
                                          hintText: "Where to?",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                              width: 2.0,
                                            ),
                                          ),
                                        )),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                _customWidget2(
                  context,
                  Icons.home,
                  "Home",
                  "Excel It Ai , Mogbazar, Dhaka",
                  Color(0xfffe8550),
                ),
                _customLine(size.width),
                _customWidget2(
                  context,
                  Icons.airplanemode_on,
                  "Airport",
                  "Hazrat Shahjalal International Airport",
                  Colors.blue,
                ),
                _customLine(size.width),
                _customWidget1(
                  context,
                  FontAwesomeIcons.history,
                  "Mirpur 10 ,Dhaka",
                  Colors.grey,
                ),
                _customLine(size.width),
                _customWidget1(
                  context,
                  FontAwesomeIcons.history,
                  "Mogbazar ,Dhaka",
                  Colors.grey,
                ),
                _customLine(size.width),
                // _customWidget1(
                //   context,
                //   FontAwesomeIcons.mapPin,
                //   "Set in map",flutter
                //   Colors.red,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.mapPin,
                        color: Colors.red,
                        //Color(0xfffe8550),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Set in map",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 50,
            width: size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xfffe8550),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                //padding:EdgeInsets.all(20)
              ),
              onPressed: () {
                Get.to(PackageSelection());
              },
              child: Text("Search"),
            ),
          ),
        ),
      ),
    );
  }

  Widget _customLine(var size) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 2,
        width: size,
        color: Color(0xfffff4ef),
      ),
    );
  }

  Widget _customWidget2(BuildContext context, IconData icon, String title,
      String subTitle, Color color) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          title=="Airport"?Transform.rotate(
            angle: 45,
            child: Icon(
              icon,
              color: color,
              //Color(0xfffe8550),
            ),
          ):
          Icon(
            icon,
            color: color,
            //Color(0xfffe8550),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title.toString(),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.grey,
                    ),
              ),
              Text(
                subTitle.toString(),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _customWidget1(
      BuildContext context, IconData icon, String title, Color color) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
            //Color(0xfffe8550),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            title.toString(),
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.grey,
                ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:googler_maps_in_flutter/tusher/my_trip.dart';
import 'package:googler_maps_in_flutter/tusher/settings.dart';
import 'package:googler_maps_in_flutter/tusher/wallet.dart';
import 'package:googler_maps_in_flutter/view/mapCallPages/edit_profile.dart';
import 'package:googler_maps_in_flutter/view/mapCallPages/notification.dart';
class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black
      ),
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(70),
              color: Colors.black,
             child: Center(
               child: InkWell(
                 onTap: (){
                   Get.to(EditProfile());
                 },
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Container(
                       width: 100,
                       height: 120,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image:AssetImage('assets/profile.jpg'),
                             fit: BoxFit.fill
                         ),
                       ),
                     ),
                     Text('Roronoa Zoro',
                     style: TextStyle(
                       fontSize: 22,
                       color: Colors.white,
                     ),
                     ),
                     Text('zorororonoa@example.com',
                       style: TextStyle(
                         fontSize: 10,
                         color: Colors.white,
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                       child: Row(
                         children: [
                           Icon(Icons.star,
                             color: Colors.green,
                           ),
                           Text('4.5',style: TextStyle(
                             fontSize: 18,
                             color: Colors.white,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:   Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width*.9,
                  color: Colors.grey,
                ),
              ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(Wallet1());
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xfffe8550),
                              child: Image(
                                image: AssetImage('assets/icon_wallet.png'),
                                // Icon(Icons.watch,
                                color: Colors.white,
                          ),
                            ),
                        SizedBox(width: 18,),
                        Text('Wallet',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                        ),

                     ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Get.to(Trip());
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xfffe8550),
                          child: Image(
                            image: AssetImage('assets/clock.png'),
                            // Icon(Icons.watch,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 18,),
                        Text('My Trips',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                        ),

                      ],

                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Get.to(notification());
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xfffe8550),
                          child: Image(
                            image: AssetImage('assets/notification.png'),
                            // Icon(Icons.watch,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 18,),
                        Text('Notification',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                        ),

                      ],

                    ),
                  ),
                  SizedBox(height: 20,),

                  InkWell(
                    onTap: (){
                      Get.to(Settings());
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xfffe8550),
                          child: Image(
                            image: AssetImage('assets/setting.png'),
                            // Icon(Icons.watch,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 18,),
                        Text('Setting',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                        ),

                      ],

                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xfffe8550),
                        child: Image(
                          image: AssetImage('assets/logout.png'),
                          // Icon(Icons.watch,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 18,),
                      Text('Log out',style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                      ),

                    ],

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

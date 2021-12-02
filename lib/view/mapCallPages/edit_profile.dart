import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class  EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
InkWell(
  onTap: (){
    Get.back(result: "ok");
  },
  child:   CircleAvatar(

    backgroundColor: Color(0xfffe8550),
    child: Icon(
      Icons.arrow_back,
      color: Colors.white,
      size: 25,
    ),
  ),
),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 110, vertical: 5),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Great! you are almost done',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 120,
                        height: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/profile.jpg',
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ],


                ),
              ),
              Positioned(
                top: 260,
                left: 10,
                width: 470,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width* .90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(35.0),
                          bottomLeft: Radius.circular(35.0),
                          bottomRight: Radius.circular(35.0),
                        ),
                        border: new Border.all(
                          width: 0.2,
                          color: Colors.grey,
                        ),
                      ),

                      child: Row(
                        children: [

                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 5,),
                         child: Icon(

                          Icons.person,
                          color: Color(0xfffe8550),
                          size: 25,
                              ),
                       ),
                      SizedBox(width: 2,),
                          Text("Roronoa Zoro",style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black

                          ),
                          ),
                        ],
                      ),
                    ),

                    // SizedBox(width: 10,),



                  ],
                ),
              ),



              Positioned(
                top: 330,
                left: 10,
                width: 470,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width* .90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(35.0),
                          bottomLeft: Radius.circular(35.0),
                          bottomRight: Radius.circular(35.0),
                        ),
                        border: new Border.all(
                          width: 0.2,
                          color: Colors.grey,
                        ),
                      ),
                      child: Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5,),
                            child: Image(

                              image: AssetImage('assets/clock.png',),

                                color: Colors.blue,


                            ),
                          ),
                          SizedBox(width: 2,),


                          Text("22",style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black
                            // Color: Colors(0xfffe8550),
                          ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 10,),



                  ],
                ),
              ),


              Positioned(
                top: 400,
                left: 10,
                width: 470,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width* .90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(35.0),
                          bottomLeft: Radius.circular(35.0),
                          bottomRight: Radius.circular(35.0),
                        ),
                        border: new Border.all(
                          width: 0.2,
                          color: Colors.grey,
                        ),
                      ),
                      child: Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5,),
                            child: Icon(

                              Icons.email,
                              color: Color(0xff7342ff),
                              size: 25,
                            ),
                          ),
                          SizedBox(width: 2,),

                          Text("roronoazoro@email.com",style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black
                            // Color: Colors(0xfffe8550),
                          ),
                          ),
                        ],
                      ),
                    ),




                  ],
                ),
              ),




              Positioned(
                top: 640,
                left: 10,
                width: 470,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width* .90,
                      decoration: BoxDecoration(
                        color: Color(0xfffe8550),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(35.0),
                          bottomLeft: Radius.circular(35.0),
                          bottomRight: Radius.circular(35.0),
                        ),
                        border: new Border.all(
                          width: 0.2,
                          color: Colors.grey,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                        child: Center(
                          child: Text("Save",style: TextStyle(
                              fontSize: 20,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white
                            // Color: Colors(0xfffe8550),
                          ),
                          ),
                        ),
                      ),
                    ),




                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

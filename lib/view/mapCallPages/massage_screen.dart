import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MassageScreen extends StatelessWidget {
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
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.back(result: "ok");
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xfffe8550),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 120,
                            height: 120,
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
                      ),
                      SizedBox(height:10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                              child: Text(
                                'Roronoa Zoro',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Color(0xfffe8550),
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: MediaQuery.of(context).size.height* .1,
                  width: MediaQuery.of(context).size.width* .90,
                  decoration: BoxDecoration(
                    color: Color(0xfffff4ef),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Text("There are many variations of passages of Lorem Ipsum available",style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                      color: Color(0xfffe8550),
                      // Color: Colors(0xfffe8550),
                    ),
                    ),
                  ),
                ),
              ),


            Positioned(
              top: 410,
                left: 10,
                width: 100,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffff4ef),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                      bottomLeft: Radius.circular(35.0),
                      bottomRight: Radius.circular(35.0),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Text("Hello",style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black
                        // Color: Colors(0xfffe8550),
                      ),
                      ),
                    ),
                  ),
                ),
              ),




              Positioned(
                top: 460,
                right: 10,
                width: 100,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffe8550),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                      bottomLeft: Radius.circular(35.0),
                      bottomRight: Radius.circular(35.0),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Text("Hi",style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white
                        // Color: Colors(0xfffe8550),
                      ),
                      ),
                    ),
                  ),
                ),
              ),




              Positioned(
                top: 520,
                left: 10,
                width: 190,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffff4ef),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                      bottomLeft: Radius.circular(35.0),
                      bottomRight: Radius.circular(35.0),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      child: Text("Where are you?",style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black
                        // Color: Colors(0xfffe8550),
                      ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 590,
                left: 60,
                width: 290,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffe8550),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                      bottomLeft: Radius.circular(35.0),
                      bottomRight: Radius.circular(35.0),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      child: Text("I'm in Howe Road, beside subway",style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white
                        // Color: Colors(0xfffe8550),
                      ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 660,
                left: 10,
                width: 370,
                height: 40,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width* .77,
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        child: Text("Type a massage",style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.grey
                          // Color: Colors(0xfffe8550),
                        ),
                        ),
                      ),
                    ),

                SizedBox(width: 10,),

                    CircleAvatar(
                      backgroundColor: Color(0xfffe8550),
                      child: Image(
                        image: AssetImage('assets/send.png',),
                        // Icon(Icons.watch,
                        color: Colors.white,height: 20,
                      ),
                    ),

                  ],
                ),
              ),


              Positioned(
                top: 590,
                left: 60,
                width: 290,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffe8550),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                      bottomLeft: Radius.circular(35.0),
                      bottomRight: Radius.circular(35.0),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      child: Text("I'm in Howe Road, beside subway",style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white
                        // Color: Colors(0xfffe8550),
                      ),
                      ),
                    ),
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
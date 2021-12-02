import 'package:flutter/material.dart';
import 'package:get/get.dart';

class callscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
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
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 105, vertical: 5),
                      child: Text(
                        'Roronoa Zoro',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 130, vertical: 5),
                      child: Text(
                        '05:00 minutes',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Positioned(
                bottom: 100,
                child: Container(
                  width: MediaQuery.of(context).size.width*.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          // Circle shape
                            shape: BoxShape.circle,
                            color: Colors.black,
                            // The border you want
                            border: new Border.all(
                              width: 2.0,
                              color: Colors.white,
                            ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Icon(
                                      Icons.mic,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                            ),
                          ],
                        ),

                  ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text("Mute",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              // Circle shape
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                            child: Image(
                            image: AssetImage('assets/phone.png'),
                        color: Colors.white,
                      ),
                ),
                              ],
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Text("End",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),



                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              // Circle shape
                              shape: BoxShape.circle,
                              color: Colors.black,
                              // The border you want
                              border: new Border.all(
                                width: 2.0,
                                color: Colors.white,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                            child: Image(
                            image: AssetImage('assets/speaker.png'),
                        color: Colors.white,
                      ),
                ),
                               ],
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Text("Loud",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
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

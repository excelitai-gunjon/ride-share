import 'package:flutter/material.dart';
import 'package:get/get.dart';
class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
                child: Row(
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

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Text(
          'Notification',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          ),
        ),
                  ],
                ),
              ),
            ),

            Container(
              //height: MediaQuery.of(context).size.height* .,
              width: MediaQuery.of(context).size.width* .90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                border: new Border.all(
                  width: 0.1,
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Icon(

                          Icons.settings,size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("It has survived not only five centuries,"
                            "\nIt has survived not only five centuries\n",
                          style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Color(0xfffe8550),
                            // Color: Colors(0xfffe8550),
                          ),
                        ),
                        Text("2h ago"),
                      ],
                    ),
                    Icon(
                      Icons.more_vert_outlined,size: 20,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              //height: MediaQuery.of(context).size.height* .12,
              width: MediaQuery.of(context).size.width* .90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                border: new Border.all(
                  width: 0.1,
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Icon(
                        Icons.sell_outlined,size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("There are many veriation of passages "
                            "\n of Lorem Ipsum avilable,but ...\n",
                          style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                            // Color: Colors(0xfffe8550),
                          ),
                        ),
                        Text("3h ago"),
                      ],
                    ),
                    Icon(
                      Icons.more_vert_outlined,size: 20,
                    ),
                  ],
                ),
              ),
            ),



            Container(
              //height: MediaQuery.of(context).size.height* .12,
              width: MediaQuery.of(context).size.width* .90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                border: new Border.all(
                  width: 0.1,
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 10,width: 10,
                        child: Icon(
                          Icons.sports_motorsports_outlined,
                          size: 20,
                          color: Colors.grey,

                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("The standerd chunk of Lorem Ipsum ,"
                            "\nused since the 1500s is reproduce ...\n",
                          style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                            // Color: Colors(0xfffe8550),
                          ),
                        ),
                        Text("6h ago"),
                      ],
                    ),
                    Icon(

                      Icons.more_vert_outlined,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),


            Container(
              //height: MediaQuery.of(context).size.height* .12,
              width: MediaQuery.of(context).size.width* .90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                border: new Border.all(
                  width: 0.1,
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child:
                        Icon(
                          Icons.person,size: 20,
                          color: Colors.grey,

                        ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("All the Lorem Ipsum generation on the,"
                            "\nInternet tend to repeat predefined ...\n",
                          style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                            // Color: Colors(0xfffe8550),
                          ),
                        ),
                        Text("12h ago"),
                      ],
                    ),
                    Icon(
                      Icons.more_vert_outlined,size: 20,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),


      ),
    );
  }
}

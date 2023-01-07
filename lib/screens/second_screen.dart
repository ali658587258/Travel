import 'package:exam_flutter/models/information.dart';
import 'package:exam_flutter/models/places.dart';
import 'package:exam_flutter/models/popular_informatio.dart';
import 'package:exam_flutter/screens/items_places.dart';
import 'package:exam_flutter/screens/popular.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'items_card.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg'),
                  radius: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('Welcome Back',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),
                        Icon(Icons.ac_unit,color: Colors.orangeAccent,)
                      ],
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Ronald Richards',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black87),)
                    ),
                  ],

                ),
                SizedBox(
                  width: 80,
                ),
                Icon(Icons.doorbell,color: Color(0xffC05E2B),size: 40,)

              ],
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              flex: 1,
              child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                    ),
                    hintText: 'Discover a City',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(15),
                      child: Icon(Icons.search,color: Color(0xffC05E2B),),
                      width: 18,
                    )
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemsCard(places: myPlaces[0]),
                  SizedBox(
                    width: 20,
                  ),
                  ItemsCard(places: myPlaces[1]),
                  SizedBox(
                    width: 20,
                  ),
                  ItemsCard(places: myPlaces[2]),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
                child: Text('Explore Cities',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemsPlaces(information: myInformation[0]),
                  SizedBox(
                    width: 20,
                  ),
                  ItemsPlaces(information: myInformation[1]),
                  SizedBox(
                    width: 20,
                  ),
                  ItemsPlaces(information: myInformation[2]),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Align(
                alignment: Alignment.topLeft,
                child: Text('Pouluar Categories',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Popular(popularInformation: information[0]),
                SizedBox(
                  width: 35,
                ),
                Popular(popularInformation: information[1]),
                SizedBox(
                  width: 35,
                ),
                Popular(popularInformation: information[2]),
                SizedBox(
                  width: 35,
                ),
                Popular(popularInformation: information[3]),

              ],
            )
          ],

        ),

      ),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: IconButton(icon: Icon(Icons.home), onPressed: () {  },),),
            Expanded(child: IconButton(icon: Icon(Icons.show_chart), onPressed: () {  },),),
            Expanded(child: new Text('')),
            Expanded(child: IconButton(icon: Icon(Icons.tab), onPressed: () {  },),),
            Expanded(child: IconButton(icon: Icon(Icons.settings), onPressed: () {  },),),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

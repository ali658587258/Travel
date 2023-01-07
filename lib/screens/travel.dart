import 'package:exam_flutter/models/information.dart';
import 'package:exam_flutter/models/places.dart';
import 'package:exam_flutter/models/popular_informatio.dart';
import 'package:exam_flutter/screens/items_travel.dart';
import 'package:exam_flutter/screens/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Travel extends StatelessWidget {

  final Information information;


  Travel({required this.information});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
           Row(
             children: [
               IconButton(onPressed: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
               },
                 icon:  Icon(Icons.arrow_back_outlined,size: 20,),
               ),
               Text('Back')
             ],
           ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(information.image),
                  fit: BoxFit.fill
                ),

                borderRadius: BorderRadius.circular(35),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                ItemsTravel(popularInformation: informationTravel[0],),
                SizedBox(
                  width: 35,
                ),
                ItemsTravel(popularInformation: informationTravel[1],),
                SizedBox(
                  width: 35,
                ),
                ItemsTravel(popularInformation: informationTravel[2],),
                SizedBox(
                  width: 35,
                ),
                ItemsTravel(popularInformation: informationTravel[3],),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                Expanded(child: Text(information.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                Icon(Icons.star_border,size: 10,),
                Text('4.9',style: TextStyle(fontSize: 10),),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.location_on,size: 10,),
                Expanded(child: Text(information.country,style: TextStyle(fontSize: 10),)),
                Text(information.price,style: TextStyle(fontSize: 12,color: Color(0xffC05E2B)),),

                Text('/person',style: TextStyle(fontSize: 10,),)

              ],
            ),
            SizedBox(
              height: 25,
            ),

            Align(
              alignment: Alignment.topLeft,
                child: Text('Decription',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ),
            SizedBox(
              height: 20,
            ),
            Text('The Rolle Pass is high mountain pass in Trentio in italy.connects the Fiemme and Prinmiero Valleys.and the communities of Predazz.San Martion di',style: TextStyle(fontWeight: FontWeight.w300,),),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text(information.price,style: TextStyle(fontSize: 12,color: Color(0xffC05E2B)),),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white)
                    ),

                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Book Now'),
                    style: ButtonStyle(
                       backgroundColor:
                    MaterialStateProperty.all(Color(0xffC05E2B))
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

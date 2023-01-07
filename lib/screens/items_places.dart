

import 'package:exam_flutter/models/information.dart';
import 'package:exam_flutter/screens/travel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsPlaces extends StatelessWidget {
  final Information information;

  ItemsPlaces({required this.information});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 160,
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(1)
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [

                Container(
                  child: Stack(
                    children: [
                      Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(information.image)
                          ),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white.withOpacity(1),
                        ),
                        child: IconButton(
                          onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Travel(information: myInformation[0])));
                          },
                          icon: Image.network(information.image)
                        ),
                        ),
                       Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.add_task,color: Color(0xffC05E2B),)
                      ),
                    ],
                  ),

                ),
                Row(
                  children: [
                    Expanded(child: Text(information.name,style: TextStyle(fontWeight: FontWeight.bold),)),
                    Icon(Icons.star_border,size: 10,),
                    Text('4.9',style: TextStyle(fontSize: 10),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on,size: 10,),
                    Expanded(child: Text(information.country,style: TextStyle(fontSize: 10),)),
                    Text(information.price,style: TextStyle(fontSize: 12,color: Color(0xffC05E2B)),),
                    Text('/person',style: TextStyle(fontSize: 10,),)
                    
                  ],
                )
              ],
            ),
          ),


    );
  }
}

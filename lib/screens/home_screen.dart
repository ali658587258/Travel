import 'package:exam_flutter/screens/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://img.freepik.com/free-vector/back-female-tourist-long-hair-dragging-suitcase-airplan-cloud-sky-cartoon-character-flat-illustration_1150-39585.jpg'),
              fit: BoxFit.fill
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Text('Explore Beauty Of Journey',style: TextStyle(
                fontSize: 44,fontWeight: FontWeight.bold,color: Color(0xff25161A)
              ),
              ),
              Expanded(child: Align(
                alignment: Alignment.topLeft,
                  child: Text('Everthing you can imagine, is here',style: TextStyle(fontWeight: FontWeight.w400),))),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black
                        ),
                        child: IconButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
                            },
                            icon: Icon(Icons.arrow_forward_ios,color: Colors.white70,)
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Swips to Explore Now',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),

              ),
              SizedBox(
                height: 20,
              ),
              Text('Privacy Policy',style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      )
    );
  }
}

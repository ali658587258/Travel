import 'package:exam_flutter/models/information.dart';
import 'package:exam_flutter/models/places.dart';
import 'package:exam_flutter/screens/home_screen.dart';
import 'package:exam_flutter/screens/second_screen.dart';
import 'package:exam_flutter/screens/travel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),


    );
  }
}

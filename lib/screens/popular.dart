import 'package:exam_flutter/models/popular_informatio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  final PopularInformation popularInformation;


  Popular({required this.popularInformation});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(popularInformation.image),
            radius: 30,
          ),
          SizedBox(
            height: 20,
          ),
          Text(popularInformation.name)
        ],
      ),
    );
  }
}

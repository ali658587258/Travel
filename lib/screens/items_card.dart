import 'package:exam_flutter/models/places.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsCard extends StatelessWidget {
final Places places;

ItemsCard({required this.places});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 180,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xfffafafa),
                image: DecorationImage(
                    image: NetworkImage(places.image),

                ),
                borderRadius: BorderRadius.circular(10)

              ),
              width: 50,
              height: 50,
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: (){
              },
              child: Text(places.name,style: TextStyle(color: Colors.black12),),
            )


          ],
        ),
      ),
    );
  }
}

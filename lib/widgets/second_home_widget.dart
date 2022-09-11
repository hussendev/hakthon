import 'package:flutter/material.dart';
import 'package:hakthon/home_screen.dart';
import 'package:hakthon/widgets/app_text.dart';

class SecondHomeWidget extends StatelessWidget {
  SecondHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            height: 140,
            width: 335,
            child: Row(
              children: [
                Container(
                  height: 140,
                  width: 128,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text('data'),
                          Icon(Icons.favorite_border)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(12)),
          ),
        ],
      ),
    );
  }
}

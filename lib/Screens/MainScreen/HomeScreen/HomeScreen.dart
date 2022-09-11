import 'package:flutter/material.dart';
import 'package:hakthon/Screens/MainScreen/MainScreen.dart';
import 'package:hakthon/widgets/app_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25, left: 15),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 158,
                  width: 269,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12)),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          AppText(
            text: 'famous',
            size: 16,
          ),
          SizedBox(
            height: 14,
          ),
          SliderWidget(),
           SizedBox(
            height: 25,
          ),
          AppText(
            text: 'soon',
            size: 16,
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 16),
                  height: 170,
                  width: 343,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12)),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 44,
          ),
          AppText(
            text: 'recently',
            size: 16,
          ),
          SizedBox(
            height: 14,
          ),
          SliderWidget(),
        ],
      ),
    );
  }
}

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 16),
            height: 200,
            width: 140,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(12)),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

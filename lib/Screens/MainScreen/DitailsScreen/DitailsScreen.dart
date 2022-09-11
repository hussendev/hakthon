

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DitailsScreen extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: NestedScrollView(
         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
           return <Widget>[
             SliverAppBar(
               expandedHeight: 270.0.h,
               floating: false,
               pinned: true,
               flexibleSpace: FlexibleSpaceBar(
                   centerTitle: true,
                   title: Text("Collapsing Toolbar",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 16.0,
                       )),
                   background: Image.network(
                     "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                     fit: BoxFit.cover,
                   )),

             ),

           ];
         },
         body: Center(
           child: Text("Sample text"),
         ),
       ),


    );
  }

}
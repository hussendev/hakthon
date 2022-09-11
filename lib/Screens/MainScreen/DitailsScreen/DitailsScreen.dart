import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DitailsScreen extends StatelessWidget {
  String imageUrl ;
  DitailsScreen({required this.imageUrl});


  var isCollapse = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0.h,
              floating: false,
              pinned: true,
              actions: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.h,
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      decoration: BoxDecoration(
                          color: MediaQuery.of(context).platformBrightness == Brightness.light
                              ? Colors.white
                              : Colors.black87,
                          borderRadius: BorderRadius.circular(5555.r)),
                      child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite_border_rounded,
                            color:  MediaQuery.of(context).platformBrightness == Brightness.light
                                ? Colors.grey[800]
                                : Colors.white ,
                           )),
                    ),
                  ],
                ),
              ],
              leadingWidth: 130.w,
              leading:  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Container(
                      height: 30.h,
                      width: 30.h,
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      decoration: BoxDecoration(
                          color:  MediaQuery.of(context).platformBrightness == Brightness.light
                              ? Colors.white
                              : Colors.black87,
                          borderRadius: BorderRadius.circular(5555.r)),
                      child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color:    MediaQuery.of(context).platformBrightness == Brightness.light
                                ? Colors.grey[800]
                                : Colors.white ,

                          )),
                    ),
                  ],),
              backgroundColor:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Colors.white
                      : Colors.black87,
              flexibleSpace: FlexibleSpaceBar(
                  background: Stack(fit: StackFit.expand,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.network(
                        imageUrl,
                        fit: BoxFit.fitHeight,
                      ),
                      Container(
                        color:  MediaQuery.of(context).platformBrightness == Brightness.light
                            ? Colors.white
                            : Colors.black87,
                      )

                    ],
                  ),

                ),
              elevation: 0.0,
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

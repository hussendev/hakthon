import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DitailsScreen extends StatefulWidget {
  @override
  State<DitailsScreen> createState() => _DitailsScreenState();
}

class _DitailsScreenState extends State<DitailsScreen> {
  var isCollapse = false;
  var currentImage = 1;

  var imagesUrl = [
    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350"
  ];
  var evintName = "abed ullah abo Samra";
  var nameDiscribtion = "abe i am scoll asd ;lasd mboidkfv ";
  var ticketPrice = 20;
  var numberOfTicketsAvailable = 200;

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
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? Colors.white
                              : Colors.black87,
                          borderRadius: BorderRadius.circular(5555.r)),
                      child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite_border_rounded,
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? Colors.grey[800]
                                : Colors.white,
                          )),
                    ),
                  ],
                ),
              ],
              leadingWidth: 130.w,
              leading: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30.h,
                    width: 30.h,
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? Colors.white
                            : Colors.black87,
                        borderRadius: BorderRadius.circular(5555.r)),
                    child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? Colors.grey[800]
                              : Colors.white,
                        )),
                  ),
                ],
              ),
              backgroundColor:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Colors.white
                      : Colors.black87,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  alignment: Alignment.bottomCenter,
                  fit: StackFit.loose,
                  children: [
                    Container(
                      height: double.infinity,
                      child: PageView.builder(
                        itemBuilder: (context, index) => Image.network(
                          imagesUrl[index],
                          fit: BoxFit.fitHeight,
                        ),
                        onPageChanged: (v) {
                          setState(() {
                            currentImage = v + 1;
                          });
                        },
                        itemCount: imagesUrl.length,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r)),
                        elevation: 5,
                        margin: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 32.h),
                        color: Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 3.h,
                                horizontal: 3.w,
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[800],
                                size: 17,
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(end: 3.w),
                              child: Text('$currentImage/${imagesUrl.length}',
                                  style:
                                      GoogleFonts.averageSans(fontSize: 12.sp)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 20.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.r),
                          topRight: Radius.circular(50.r),
                        ),
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? Colors.white
                            : Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              elevation: 0.0,
            ),
          ];
        },
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            evintName,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Container(
                          margin: EdgeInsetsDirectional.only(top: 4.h),
                          child: InkWell(
                            child: Icon(
                              Icons.share_rounded,
                              color: Color(0xff3c48c5),
                              size: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      nameDiscribtion,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.light
                                ? Colors.grey[500]
                                : Colors.grey[300],
                            fontSize: 13.sp,
                          ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.w, vertical: 2.h),
                              margin: EdgeInsetsDirectional.only(end: 4.w),
                              decoration: BoxDecoration(
                                  color: Colors.green[500],
                                  borderRadius: BorderRadius.circular(5.r)),
                              child: Text(
                                ticketPrice.toString() + "\$ ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Text(
                              "For ticket",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                      color: Colors.green[500],
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              "|",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                      color: MediaQuery.of(context)
                                                  .platformBrightness ==
                                              Brightness.light
                                          ? Colors.grey[500]
                                          : Colors.grey[300],
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              "$numberOfTicketsAvailable  Tickets available",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: MediaQuery.of(context)
                                                  .platformBrightness ==
                                              Brightness.light
                                          ? Colors.grey[500]
                                          : Colors.grey[300],
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                        Text(
                          "available vip",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(
                                  color: MediaQuery.of(context)
                                              .platformBrightness ==
                                          Brightness.light
                                      ? Colors.grey[400]
                                      : Colors.grey[300],
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Divider(),
              Container(
                height: 130.h,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 16.w,
                vertical: 16.h),
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Container(

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

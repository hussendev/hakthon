import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

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
  var compunyName = "isu asdlkm ";
  var aboutCompunyName =
      "isu a as'dak spodka spdokaspodk aposdk apsodk apso dmsogkdnm dkfmapso dfkaspodk aspodk apsodk aspo dmaspkfmsdfklm s;SOFN JPa;fd sdlkm ";
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
                              ? Color(0xFFF5F5F5)
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
                            ? Color(0xFFF5F5F5)
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
                      ?Color(0xFFF5F5F5)
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
                        color: Color(0xFFF5F5F5),
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
                            ? Color(0xFFF5F5F5)
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
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
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
                                color: Theme.of(context).cardColor,
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
                              color:
                                  MediaQuery.of(context).platformBrightness ==
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
                  width: double.infinity,
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'about $compunyName',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          ReadMoreText(
                            '$aboutCompunyName',
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      color: Colors.grey[500],
                                    ),
                            trimLines: 2,
                            colorClickableText: Colors.pink,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: 'Read less',
                            moreStyle:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      color: Theme.of(context).cardColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          SizedBox(
                            height: 5.h,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  child: Text(
                    'Event chart',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (ctx, inde) {
                        return Card(
                           shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 8.h),


                          child: ExpansionTile(

                            title: Row(
                              children: [
                                Text('$inde day'),
                                Spacer(),
                                Text('20201/20/2000')
                              ],
                            ),
                            children: [
                              // coomenteion row
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.timelapse,
                                        color: Theme.of(context).cardColor,
                                        size: 25,
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 2.5.w,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context).cardColor,
                                            borderRadius:
                                                BorderRadius.circular(5.r)),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Expanded(
                                    child: Column(
crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        Text(
                                          '8:20 am',
                                          style: Theme.of(context).textTheme.headline6?.copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),                                    SizedBox(height: 20.h,),

                                        Text(
                                          'start any peapole kasdkm asldasd asd asd asd asdsad asd  m',
                                          style: Theme.of(context).textTheme.headline6?.copyWith(
                                            color: Colors.grey[500]
                                          ),
                                        ),

                                        SizedBox(height: 10.h,)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

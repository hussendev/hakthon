import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hakthon/Screens/MainScreen/DitailsScreen/DitailsScreen.dart';
import 'package:hakthon/Screens/MainScreen/MainScreen.dart';
import 'package:hakthon/widgets/app_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 25.h, left: 15.w),
        child: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 158.h,
                initialPage: 1,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                enlargeCenterPage: true,
                disableCenter: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,

              ),
              items: [
                Container(
                  height: 158.h,
                  width: 269.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppText(
                            text: ' 4 تذاكر لحضور مهرجان الاصيل قط 50 ',textStyle: Theme.of(context).textTheme.bodyText1!,
                         ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            AppText(
              text: 'famous',textStyle: Theme.of(context).textTheme.headline2!,
            ),
            SizedBox(
              height: 14.sp,
            ),
            SliderWidget(),
            SizedBox(
              height: 25.sp,
            ),
            AppText(
              text: 'soon',textStyle: Theme.of(context).textTheme.headline2!,
            ),
            SizedBox(
              height: 14.h,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 170.h,
                initialPage: 1,
                reverse: false,
                autoPlay: true,
                disableCenter: true,
                enableInfiniteScroll: true,
                viewportFraction: 01,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 170.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(4.r)),
                )

              ],
            ),

            SizedBox(
              height: 44.h,
            ),
            AppText(
              text: 'recently',textStyle: Theme.of(context).textTheme.headline2!,
            ),
            SizedBox(
              height: 14.h,
            ),
            SliderWidget(),
          ],
        ),
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
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DitailsScreen(),));
      },
      child: Container(
        height: 200.h,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 16),
              height: 200.h,
              width: 140.w,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(12.r)),
            );
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

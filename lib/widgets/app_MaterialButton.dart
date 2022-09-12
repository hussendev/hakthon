import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMaterialButton extends StatelessWidget {
  double width;
  double height;
  double margenHorizantel;
  double margenVertical;
  double radis;
  String textButton;
  Function onTap;
  AppMaterialButton({
    this.width = double.infinity,
    this.height = 48,
    this.radis = 5,
    this.margenHorizantel = 0,
    this.margenVertical = 0,
    required this.textButton,required this.onTap,
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        height: height.h,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: margenHorizantel.h,vertical:margenVertical.w ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radis.r),
          color: Theme.of(context).cardColor
        ),
        child: Text(textButton,
        style: Theme.of(context).textTheme.headline6?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),
        ),
      ),
      onTap: ()=>onTap,
    );
  }
}

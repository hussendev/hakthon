import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormFiled extends StatelessWidget {
  int maxLine;

  int maxLength;

  String hint;

  TextEditingController controller;
  TextInputType textInputType;

  AppTextFormFiled({
    required this.hint,
    this.maxLine = 1,
    this.maxLength = 15,
    required this.controller,
    required this.textInputType,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.grey[200]
            : Colors.grey[800],
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: TextFormField(
        maxLines: maxLine,
        keyboardType: textInputType,
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxLength),
        ],
        decoration: InputDecoration(
            hintText: hint, prefixIcon: Icon(Icons.phone_iphone_outlined)),
      ),
    );
  }
}

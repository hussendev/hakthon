import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/app_MaterialButton.dart';
import '../../widgets/app_TextFormFiled.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/party.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor       ,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r),
                        )),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone number',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      AppTextFormFiled(
                        controller: TextEditingController(),
                        hint: 'Enter phone number',
                        textInputType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      AppMaterialButton(
                        textButton: 'Login',
                        onTap: () {},
                        height: 46,
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      RichText(
                        textAlign: TextAlign.center,

                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                fontSize: 15.sp
                              ),
                              children: [
                            TextSpan(
                                text:
                                    'By clicking the login button, you agree to our'),
                            TextSpan(
                                text:
                                    ' Terms and Conditions and Privacy Policy',
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 15.sp,
                                  color: Theme.of(context).cardColor
                                )
                            )
                          ])),

                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

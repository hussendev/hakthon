import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hakthon/Screens/MainScreen/MainScreen.dart';

import 'Screens/MainScreen/DitailsScreen/DitailsScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {




   @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
     minTextAdapt: true,
     splitScreenMode: true,
     builder: (context , child) {
     return Directionality(
        textDirection: TextDirection.ltr,
        
        child: MaterialApp(
          title: 'Flutter Demo',
          home: DitailsScreen(),
        ),
      );}
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
             scaffoldBackgroundColor:  Color(0xFFF5F5F5),
            accentColor: Colors.transparent,
            iconTheme: IconThemeData(
              color: Colors.grey[600],
size: 22
            ),

       textTheme: TextTheme(
         headline1: GoogleFonts.averageSans(
           fontSize: 24.sp,
           color: Colors.black87
         ),
         headline2: GoogleFonts.averageSans(
           fontSize: 22.sp,
           color: Colors.black87
         ),
         headline3: GoogleFonts.averageSans(
           fontSize: 20.sp,
           color: Colors.black87
         ),
         headline4: GoogleFonts.averageSans(
           fontSize: 18.sp,
           color: Colors.black87
         ),
         headline5: GoogleFonts.averageSans(
           fontSize: 16.sp,
           color: Colors.black87
         ),
         headline6: GoogleFonts.averageSans(
           fontSize: 14.sp,
           color: Colors.black87
         ),
  bodyText2: GoogleFonts.averageSans(
      color: Colors.black87
  ),  bodyText1: GoogleFonts.averageSans(
      color: Colors.black87,
         fontSize: 15.sp
  ),

       )
          ),
          themeMode: ThemeMode.light,
          home: DitailsScreen(),
        ),
      );}
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:googler_maps_in_flutter/constants.dart';
import 'package:googler_maps_in_flutter/pages/pages.dart';
import 'package:googler_maps_in_flutter/styles/styles.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:googler_maps_in_flutter/view/home_page.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1080, 2160),
      builder: () => GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: mainColorSwatch,
            // This is the theme of your application.
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            // primarySwatch: Colors.blu
            ),
        //home: MyHomePage(),
        routes: {
          kRouteRoot: (context) => const SplashPage(),
          kRouteIntro: (context) => const IntroPage(),
          kRouteSetProfile: (context) => const ProfileSetupPage(),
          kRouteLogin1: (context) => const LoginPage1(),
          kRouteLogin2: (context) => const LoginPage2(),
          kRouteLoginOtp: (context) => const LoginOtpPage(),
          kRouteRegister1: (context) => const RegisterPage1(),
          kRouteRegister2: (context) => const RegisterPage2(),
          kRouteRegisterOtp: (context) => const RegisterOtpPage(),
          kRouteResetPass: (context) => const PassResetPage(),
          kRouteRestePassOtp: (context) => const ResetpassOtpPage(),
          kRouteNewPassOtp: (context) => const NewPasswordPage(),
        },
      ),
    );
  }
}

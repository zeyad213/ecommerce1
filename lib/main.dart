import 'package:flutter/material.dart';
import 'sign_in.dart';  // استيراد شاشة Sign In
import 'sign_up.dart';  // استيراد شاشة Sign Up
import 'home_screen.dart';  // استيراد شاشة Home
import 'splash_screen.dart';  // استيراد شاشة Splash

void main() {
  runApp(RouteApp());
}

class RouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),  // الصفحة الرئيسية هي Splash Screen
      routes: {
        '/signin': (context) => SignInScreen(),   // مسار Sign In
        '/signup': (context) => SignUpScreen(),   // مسار Sign Up
        '/home': (context) => HomeScreen(),       // مسار Home
      },
    );
  }
}

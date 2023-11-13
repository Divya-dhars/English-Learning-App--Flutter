import 'package:client/screens/home.dart';
import 'package:client/screens/login.dart';
import 'package:client/screens/register.dart';
import 'package:client/screens/welcome.dart';
import 'package:client/screens/whyenglish.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegisterScreen.id:(context)=>RegisterScreen(),
        WhyEnglishScreen.id:(context)=>WhyEnglishScreen(),
        HomeScreen.id:(context)=>HomeScreen()
      },
    );
  }
}


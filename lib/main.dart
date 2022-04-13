import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pbl_4/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pbl_4/welocme.dart';
import './pages/signupscreen.dart';
import './pages/home.dart';

//my own imports
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: 'welcome_screen',
    routes: {
      'welcome_screen': (context) => WelcomeScreen(),
      'registration_screen': (context) => RegistrationScreen(),
      'login_screen': (context) => LoginScreen(),
      'home_screen': (context) => HomePage()
    },
  ));
}

import 'package:flutter/material.dart';
import 'package:hutibb/screens/acil_yaklasim_screen.dart';
import 'package:hutibb/screens/forgot_password.dart';
import 'package:hutibb/screens/login_screen.dart';
import 'package:hutibb/screens/main_screen.dart';
import 'package:hutibb/screens/poliklinik_list_screen.dart';
import 'package:hutibb/screens/recete_screen.dart';
import 'package:hutibb/screens/register_screen.dart';
import 'package:hutibb/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplasScreen.id,
      routes: {
        SplasScreen.id: (context) => SplasScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ForgotPassword.id: (context) => ForgotPassword(),
        MainScreen.id: (context) => MainScreen(),
        ReceteScreen.id: (context) => ReceteScreen(),
        PoliklinikListScreen.id: (context) => PoliklinikListScreen(),
        AcilYaklasimScreen.id: (context) => AcilYaklasimScreen(),
      },
    );
  }
}

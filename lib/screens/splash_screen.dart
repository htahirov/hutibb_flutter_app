import 'package:flutter/material.dart';
import 'package:hutibb/screens/login_screen.dart';
import 'package:hutibb/screens/main_screen.dart';
import 'package:hutibb/screens/register_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplasScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  @override
  _SplasScreenState createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  String getEmail;

  @override
  void initState() {
    getString();
    super.initState();
  }

  Future getString() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    setState(() {
      getEmail = sharedPreferences.getString('email');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: getEmail == null ? LoginScreen() : MainScreen(),
      backgroundColor: Colors.blueGrey,
      title: new Text(
        'Hutibb',
        style: TextStyle(color: Colors.white),
        textScaleFactor: 2.2,
      ),
      image: Image.asset('images/appicon.png'),
      loadingText: Text(
        "Loading",
        style: TextStyle(color: Colors.white),
      ),
      photoSize: 50.0,
      loaderColor: Colors.white,
    );
  }
}

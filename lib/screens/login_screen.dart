import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:hutibb/extracts/new_container.dart';
import 'package:hutibb/screens/forgot_password.dart';
import 'package:hutibb/screens/main_screen.dart';
import 'package:hutibb/screens/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email;
  String password;

  Future setString() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString('email', email);
  }

  // Future getData() async {
  //   Response response = await get(
  //       "http://192.168.1.106/my_projects/login.php?email=$email&password=$password");
  //   var body = jsonDecode(response.body);
  //   int data = body['success'];
  //   if (data == 1) {
  //     Navigator.pushNamed(context, MainScreen.id);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
            child: Column(
              children: [
                image,
                text,
                SignContainer(
                    controller: emailController, bool: false, label: 'Email'),
                SignContainer(
                    controller: passwordController,
                    bool: true,
                    label: 'Password'),
                FlatButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, ForgotPassword.id),
                  textColor: Colors.blueGrey,
                  child: Text('Forgot Password'),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Builder(
                    builder: (context) => ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blueGrey,
                        child: Text('Login'),
                        onPressed: () async {
                          // print(usernameController.text);
                          // print(passwordController.text);
                          email = emailController.text;
                          password = passwordController.text;

                          setString();

                          Response response = await get(
                              "http://192.168.1.106/my_projects/login.php?email=$email&password=$password");
                          var body = jsonDecode(response.body);
                          int data = body['success'];

                          data == 1
                              ? Navigator.pushNamed(context, MainScreen.id)
                              : Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: email.isEmpty || password.isEmpty
                                        ? Text("Fill all blanks...")
                                        : Text(
                                            "Incorrect email or password..."),
                                  ),
                                );
                        },
                      ),
                    ),
                  ),
                ),
                LoginRegisterButton(
                  accountText: "Don't have an account?",
                  textButton: 'Register',
                  onClick: () =>
                      Navigator.pushNamed(context, RegisterScreen.id),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blueGrey,
                    child: Text('As a Guest'),
                    onPressed: () {
                      Navigator.pushNamed(context, MainScreen.id);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

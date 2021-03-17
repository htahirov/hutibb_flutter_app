import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:hutibb/extracts/new_container.dart';
import 'package:hutibb/screens/login_screen.dart';
import 'package:hutibb/screens/main_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register_screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email;
  String username;
  String password;

  // Future getData() async {
  //   Response response = await get(
  //       "http://192.168.1.106/my_projects/register.php?email=$email&username=$username&password=$password");
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                image,
                text,
                SignContainer(
                    controller: emailController, bool: false, label: 'Email'),
                SignContainer(
                    controller: usernameController,
                    bool: false,
                    label: 'Username'),
                SignContainer(
                    controller: passwordController,
                    bool: true,
                    label: 'Password'),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Builder(
                    builder: (context) => RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blueGrey,
                      child: Text('Register'),
                      onPressed: () async {
                        // print(usernameController.text);
                        // print(passwordController.text);
                        email = emailController.text;
                        username = usernameController.text;
                        password = passwordController.text;

                        Response response = await get(
                            "http://192.168.1.106/my_projects/register.php?email=$email&username=$username&password=$password");
                        var body = jsonDecode(response.body);
                        int data = body['success'];

                        data == 1
                            ? Navigator.pushNamed(context, MainScreen.id)
                            : Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: email.isEmpty || password.isEmpty
                                      ? Text("Fill all blanks...")
                                      : Text(
                                          "This user has been registered..."),
                                ),
                              );
                      },
                    ),
                  ),
                ),
                LoginRegisterButton(
                  accountText: 'Already have an account?',
                  textButton: 'Login',
                  onClick: () => Navigator.pushNamed(context, LoginScreen.id),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

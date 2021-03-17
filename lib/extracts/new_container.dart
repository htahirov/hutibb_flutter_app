import 'package:flutter/material.dart';

class NewContainer extends StatelessWidget {
  NewContainer({this.title, this.icons, this.onPress});

  final String title;
  final IconData icons;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 90,
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icons,
              size: 35,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
  }
}

class SignContainer extends StatelessWidget {
  SignContainer({@required this.controller, this.label, this.bool});

  final TextEditingController controller;
  final String label;
  final bool;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        obscureText: bool,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }
}

class LoginRegisterButton extends StatelessWidget {
  LoginRegisterButton({this.accountText, this.textButton, this.onClick});

  final String accountText;
  final String textButton;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            accountText,
            style: TextStyle(color: Colors.blueGrey),
          ),
          FlatButton(
            textColor: Colors.blueGrey,
            child: Text(
              textButton,
              style: TextStyle(fontSize: 20),
            ),
            onPressed: onClick,
          ),
        ],
      ),
    );
  }
}

Container image = Container(
  alignment: Alignment.center,
  child: Image.asset(
    'images/appicon.png',
    height: 100,
    width: 100,
  ),
);

Container text = Container(
  alignment: Alignment.center,
  padding: EdgeInsets.all(10),
  child: Text(
    'Hutibb',
    style: TextStyle(
      color: Colors.blueGrey,
      fontWeight: FontWeight.w500,
      fontSize: 40,
    ),
  ),
);

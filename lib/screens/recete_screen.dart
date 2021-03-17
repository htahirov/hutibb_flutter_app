import 'package:flutter/material.dart';
import 'package:hutibb/screens/detail_screen.dart';
import 'package:hutibb/screens/main_screen.dart';
import 'package:hutibb/screens/poliklinik_list_screen.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class ReceteScreen extends StatefulWidget {
  static const String id = 'recete_screen';
  @override
  _ReceteScreenState createState() => _ReceteScreenState();
}

class _ReceteScreenState extends State<ReceteScreen> {
  int currentPage = 0;
  int n = 0;
  List acilYetiskin = [
    "Akut akciğer ödemi",
    "Akut apandisit",
    "Akut karın",
    "Akut böbrek yetmezliği",
    "Akut kolesistit",
    "Akut koroner sendromlar-MI",
    "Akut pankreatit",
    "Akut pyelonefrit",
    "Alt solunum yolu enfeksiyonları",
    "Anaflaksi",
    "Angina pectoris",
    "Aort diseksiyonu",
    "Astım atağı",
    "Ateş"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hutıbb'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          splashRadius: 15,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
              icon: Icon(Icons.account_circle),
              splashRadius: 15.0,
              iconSize: 30.0,
              tooltip: 'Account',
              onPressed: () {})
        ],
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 14,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.local_hospital),
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text("${acilYetiskin[index]}"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(index, n)),
                  );
                },
              ),
            );
          }),
      bottomNavigationBar: FancyBottomNavigation(
        inactiveIconColor: Colors.blueGrey,
        circleColor: Colors.blueGrey,
        initialSelection: 1,
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Ana Sayfa",
              onclick: () {
                Navigator.pushNamed(context, MainScreen.id);
              }),
          TabData(
              iconData: Icons.accessibility,
              title: "Acil Yetişkin",
              onclick: () {}),
          TabData(
              iconData: Icons.local_hospital,
              title: "Poliklinik",
              onclick: () {
                Navigator.pushNamed(context, PoliklinikListScreen.id);
              }),
          TabData(
              iconData: Icons.workspaces_filled,
              title: "Acil Yaklaşım",
              onclick: () {}),
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}

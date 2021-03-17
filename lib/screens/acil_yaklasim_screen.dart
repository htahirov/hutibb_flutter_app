import 'package:flutter/material.dart';
import 'package:hutibb/screens/detail_screen.dart';
import 'package:hutibb/screens/main_screen.dart';
import 'package:hutibb/screens/poliklinik_list_screen.dart';
import 'package:hutibb/screens/recete_screen.dart';

class AcilYaklasimScreen extends StatefulWidget {
  static const String id = 'acil_yaklasim_screen';
  @override
  _AcilYaklasimScreenState createState() => _AcilYaklasimScreenState();
}

class _AcilYaklasimScreenState extends State<AcilYaklasimScreen> {
  int currentPage = 0;
  int n = 2;
  List acilYaklasimList = [
    "Akrep ısırması",
    "Ani görme kaybı",
    "Ateş yüksekliği",
    "Baş ağrısı",
    "Bel ağrısı",
    "Karın ağrısı",
    "Nefes darlığı"
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
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.local_hospital),
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text("${acilYaklasimList[index]}"),
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
      // bottomNavigationBar: FancyBottomNavigation(
      //   inactiveIconColor: Colors.blueGrey,
      //   circleColor: Colors.blueGrey,
      //   initialSelection: 3,
      //   tabs: [
      //     TabData(
      //         iconData: Icons.home,
      //         title: "Ana Sayfa",
      //         onclick: () {
      //           Navigator.pushNamed(context, MainScreen.id);
      //         }),
      //     TabData(
      //         iconData: Icons.accessibility,
      //         title: "Acil Yetişkin",
      //         onclick: () {
      //           Navigator.pushNamed(context, ReceteScreen.id);
      //         }),
      //     TabData(
      //         iconData: Icons.local_hospital,
      //         title: "Poliklinik",
      //         onclick: () {
      //           Navigator.pushNamed(context, PoliklinikListScreen.id);
      //         }),
      //     TabData(
      //         iconData: Icons.workspaces_filled,
      //         title: "Acil Yaklaşım",
      //         onclick: () {}),
      //   ],
      //   onTabChangedListener: (position) {
      //     setState(() {
      //       currentPage = position;
      //     });
      //   },
      // ),
    );
  }
}

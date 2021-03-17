import 'package:flutter/material.dart';
import 'package:hutibb/screens/acil_yaklasim_screen.dart';
import 'package:hutibb/screens/detail_screen.dart';
import 'package:hutibb/screens/main_screen.dart';
import 'package:hutibb/screens/recete_screen.dart';

class PoliklinikListScreen extends StatefulWidget {
  static const String id = 'poliklinik_list_screen';
  @override
  _PoliklinikListScreenState createState() => _PoliklinikListScreenState();
}

class _PoliklinikListScreenState extends State<PoliklinikListScreen> {
  int currentPage = 0;
  int n = 1;
  List poliklinikList = [
    "Abse",
    "Adenoviral konjonktivit",
    "Akne vulgaris(sivilce)",
    "Akut bel,boyun ağrısı ve bel tutulması",
    "Akut faranjit",
    "Akut gastroenterit(İshal)",
    "Akut otitis media",
    "Akut sinuzit",
    "Akut ürtiket ve anjio ödem",
    "Alerjik ve vernal(mevsimsel) konjonktivit",
    "Alerjik rinit(saman nezlesi)",
    "Amipli dizanteri(amebiyaz)",
    "Anal fissur",
    "Askarisler,kancalı kurtlar",
    "Astım"
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
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.local_hospital),
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text("${poliklinikList[index]}"),
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
      //   initialSelection: 2,
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
      //         onclick: () {}),
      //     TabData(
      //         iconData: Icons.workspaces_filled,
      //         title: "Acil Yaklaşım",
      //         onclick: () {
      //           Navigator.pushNamed(context, AcilYaklasimScreen.id);
      //         }),
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

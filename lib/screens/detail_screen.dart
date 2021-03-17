import 'package:flutter/material.dart';
import 'package:hutibb/screens/main_screen.dart';
import 'package:hutibb/constants_list.dart';

class DetailScreen extends StatefulWidget {
  final int index;
  final int n;
  DetailScreen(this.index, this.n);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.n == 0)
      return Scaffold(
        backgroundColor: Colors.blueGrey,
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(choices_recete[widget.index].description,
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
        // bottomNavigationBar: FancyBottomNavigation(
        //   inactiveIconColor: Colors.blueGrey,
        //   circleColor: Colors.blueGrey,
        //   tabs: [
        //     TabData(
        //         iconData: Icons.home,
        //         title: "Home",
        //         onclick: () {
        //           Navigator.pushNamed(context, MainScreen.id);
        //         }),
        //     TabData(
        //         iconData: Icons.local_hospital,
        //         title: "Hospital",
        //         onclick: () {}),
        //     TabData(iconData: Icons.search, title: "Search", onclick: () {}),
        //   ],
        //   onTabChangedListener: (position) {
        //     setState(() {
        //       currentPage = position;
        //     });
        //   },
        // ),
      );
    if (widget.n == 1)
      return Scaffold(
        backgroundColor: Colors.blueGrey,
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(choices_poliklinik[widget.index].description,
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
        // bottomNavigationBar: FancyBottomNavigation(
        //   inactiveIconColor: Colors.blueGrey,
        //   circleColor: Colors.blueGrey,
        //   tabs: [
        //     TabData(
        //         iconData: Icons.home,
        //         title: "Home",
        //         onclick: () {
        //           Navigator.pushNamed(context, MainScreen.id);
        //         }),
        //     TabData(
        //         iconData: Icons.local_hospital,
        //         title: "Hospital",
        //         onclick: () {}),
        //     TabData(iconData: Icons.search, title: "Search", onclick: () {}),
        //   ],
        //   onTabChangedListener: (position) {
        //     setState(() {
        //       currentPage = position;
        //     });
        //   },
        // ),
      );
    if (widget.n == 2)
      return Scaffold(
        backgroundColor: Colors.blueGrey,
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(choices_acil_yaklasim[widget.index].description,
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
        // bottomNavigationBar: FancyBottomNavigation(
        //   inactiveIconColor: Colors.blueGrey,
        //   circleColor: Colors.blueGrey,
        //   tabs: [
        //     TabData(
        //         iconData: Icons.home,
        //         title: "Home",
        //         onclick: () {
        //           Navigator.pushNamed(context, MainScreen.id);
        //         }),
        //     TabData(
        //         iconData: Icons.local_hospital,
        //         title: "Hospital",
        //         onclick: () {}),
        //     TabData(iconData: Icons.search, title: "Search", onclick: () {}),
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

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hutibb/extracts/carousel_images.dart';
import 'package:hutibb/extracts/new_container.dart';
import 'package:hutibb/screens/login_screen.dart';
import 'package:hutibb/screens/recete_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPage = 0;
  int currentIndex = 0;

  Future logOut() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove('email');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Hutıbb'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          splashRadius: 15,
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          // IconButton(
          //     icon: Icon(Icons.account_circle),
          //     splashRadius: 15.0,
          //     iconSize: 30.0,
          //     tooltip: 'Account',
          //     onPressed: () {}),
          IconButton(
              icon: Icon(Icons.logout),
              splashRadius: 15.0,
              iconSize: 30.0,
              tooltip: 'Account',
              onPressed: () {
                logOut();
                Navigator.pushNamed(context, LoginScreen.id);
              })
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    CarouselImages(image: "images/1.jpg"),
                    CarouselImages(image: "images/2.jpg"),
                    CarouselImages(image: "images/3.jpg"),
                    CarouselImages(image: "images/4.jpg"),
                  ],
                  //Slider Container properties
                  options: CarouselOptions(
                      height: 200.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 200),
                      viewportFraction: 0.8,
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      }),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i <= 3; i++)
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: i == currentIndex ? Colors.white : Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 40),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NewContainer(
                            title: 'Reçete\nAsistanı',
                            icons: Icons.assistant,
                            onPress: () {
                              Navigator.pushNamed(context, ReceteScreen.id);
                            }),
                        NewContainer(
                            title: 'Hastalıklar',
                            icons: Icons.sick,
                            onPress: () {}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NewContainer(
                            title: 'İlaçlar',
                            icons: Icons.medical_services,
                            onPress: () {}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NewContainer(
                            title: 'Acil\nYardım',
                            icons: Icons.local_hospital,
                            onPress: () {}),
                        NewContainer(
                            title: 'Blog',
                            icons: Icons.post_add,
                            onPress: () {}),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentPage,
      //   iconSize: 30,
      //   unselectedItemColor: Colors.blueGrey,
      //   selectedItemColor: Colors.black,
      //   showUnselectedLabels: true,
      //   selectedIconTheme: IconThemeData(color: Colors.black),
      //   items: [
      //     BottomNavigationBarItem(
      //       activeIcon: CircleAvatar(
      //         backgroundColor: Colors.blueGrey,
      //         radius: 20,
      //         child: Icon(
      //           Icons.home,
      //           color: Colors.white,
      //         ),
      //       ),
      //       icon: Icon(Icons.home),
      //       tooltip: 'Ana Sayfa',
      //       label: 'Ana Sayfa',
      //     ),
      //     BottomNavigationBarItem(
      //         activeIcon: CircleAvatar(
      //           backgroundColor: Colors.blueGrey,
      //           radius: 20,
      //           child: IconButton(
      //               icon: Icon(
      //                 Icons.local_hospital,
      //                 color: Colors.white,
      //               ),
      //               onPressed: () =>
      //                   Navigator.pushNamed(context, ReceteScreen.id)),
      //         ),
      //         icon: Icon(Icons.local_hospital),
      //         tooltip: 'Hospital',
      //         label: 'Hospital'),
      //     BottomNavigationBarItem(
      //         activeIcon: CircleAvatar(
      //           backgroundColor: Colors.blueGrey,
      //           radius: 20,
      //           child: IconButton(
      //               icon: Icon(
      //                 Icons.info,
      //                 color: Colors.white,
      //               ),
      //               onPressed: () {}),
      //         ),
      //         icon: Icon(Icons.info),
      //         tooltip: 'Hakkımızda',
      //         label: 'Hakkımızda'),
      //     BottomNavigationBarItem(
      //         activeIcon: CircleAvatar(
      //           backgroundColor: Colors.blueGrey,
      //           radius: 20,
      //           child: IconButton(
      //               icon: Icon(
      //                 Icons.account_circle,
      //                 color: Colors.white,
      //               ),
      //               onPressed: () {}),
      //         ),
      //         icon: Icon(Icons.account_circle),
      //         tooltip: 'Hesap',
      //         label: 'Hesap'),
      //   ],
      //   onTap: (int index) {
      //     setState(() {
      //       currentPage = index;
      //     });
      //   },
      // ),
      bottomNavigationBar: FancyBottomNavigation(
        inactiveIconColor: Colors.blueGrey,
        circleColor: Colors.blueGrey,
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "Ana Sayfa",
          ),
          TabData(
              iconData: Icons.local_hospital,
              title: "Hospital",
              onclick: () {
                Navigator.pushNamed(context, ReceteScreen.id);
              }),
          TabData(iconData: Icons.search, title: "Arama", onclick: () {}),
          TabData(iconData: Icons.info, title: "Hakkımızda")
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

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tester/pages/creditcard.dart';
import 'package:tester/pages/dashboard.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RootPage(),
  ));
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetTabs(),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {
          setState(() {
            pageIndex = 4;
          });
        },
        child: Center(
          child: Icon(
            FontAwesomeIcons.creditCard,
            size: 25,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: getBody(),
    );
  }

  Widget GetTabs() {
    List<IconData> iconsItems = [
      FontAwesomeIcons.borderAll,
      FontAwesomeIcons.message,
      FontAwesomeIcons.bell,
      FontAwesomeIcons.user,
    ];
    return AnimatedBottomNavigationBar(
      icons: iconsItems,
      activeIndex: pageIndex,
      activeColor: Colors.blue,
      splashColor: Colors.red,
      inactiveColor: Colors.black.withOpacity(0.5),
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      rightCornerRadius: 10,
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        DashBoard(),
        Center(
          child: Text(
            "Chat Page",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Center(
          child: Text(
            "Notification Page",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Center(
          child: Text(
            "Account Page",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Creditcard()
      ],
    );
  }
}

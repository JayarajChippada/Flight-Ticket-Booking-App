import 'package:design1/screens/home_screen.dart';
import 'package:design1/globals/styles.dart';
import 'package:design1/screens/profile_screen.dart';
import 'package:design1/screens/search_screen.dart';
import 'package:design1/screens/ticket_screen.dart';

import 'widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedItem = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  static final List<Widget> screens = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MyStyles.primary,
      ),
      home: Scaffold(
        backgroundColor: MyStyles.bgColor,
        body: Center(child: screens[selectedItem]),
        bottomNavigationBar: BottomBar(
          ontap: onItemTapped,
          selectedIndex: selectedItem,
        ),
      ),
    );
  }
}

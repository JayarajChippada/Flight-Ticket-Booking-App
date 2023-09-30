import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final Function(int) ontap;
  final int selectedIndex;
  const BottomBar({super.key, required this.ontap, required this.selectedIndex});
  
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: Colors.blueGrey,
      unselectedItemColor: const Color(0xFF526480),
      type: BottomNavigationBarType.fixed,
      elevation: 5,
      onTap: ontap,
      items:const  [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket), label: "Ticket"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded), label: "Account")
      ],
    );
  }
}

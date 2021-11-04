import 'package:flutter/material.dart';
import 'package:loola_store/const/colors.dart';

class BottomNavigationBarItems extends StatelessWidget {
  final int selectedIndex;

  final onItemTapped;

  const BottomNavigationBarItems(
      {required this.onItemTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        customBottomNavigationBarItem(Icons.home_outlined),
        customBottomNavigationBarItem(Icons.favorite),
        customBottomNavigationBarItem(Icons.settings),
        customBottomNavigationBarItem(Icons.delivery_dining),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: bottomNavigationBarSelectedItem,
      onTap: onItemTapped,
    );
  }

  BottomNavigationBarItem customBottomNavigationBarItem(IconData icon) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: 30,
      ),
      label: '',
      backgroundColor: bottomNavigationBarBackgroundColor,
    );
  }
}

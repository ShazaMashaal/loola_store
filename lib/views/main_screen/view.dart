import 'package:flutter/material.dart';
import 'package:loola_store/const/colors.dart';

import 'components/bottom_navigation_bar_items.dart';
import 'components/items.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Components.screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(height:MediaQuery.of(context).size.height/10,
          child: BottomNavigationBarItems(
            onItemTapped: _onItemTapped, selectedIndex: _selectedIndex,)),
    );
  }


}

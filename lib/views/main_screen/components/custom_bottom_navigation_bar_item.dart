import 'package:flutter/material.dart';
import 'package:loola_store/const/colors.dart';

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
import 'package:flutter/material.dart';
import 'package:loola_store/const/colors.dart';
import 'dart:math' as math;

import 'package:loola_store/const/styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        hintStyle: const TextStyle(color:bottomNavigationBarSelectedItem,fontSize: 20 ),
        focusedBorder: searchTextFieldBorder,
        enabledBorder: searchTextFieldBorder,
        hintText: 'بحث',
        suffixIcon: Transform.rotate(
          angle: 180 * math.pi / 360,
          child: const Icon(
            Icons.search,size: 25,
            color: bottomNavigationBarSelectedItem,
          ),
        ),
      ),
    );
  }
}

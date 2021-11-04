import 'package:flutter/material.dart';
import 'package:loola_store/views/favorites/view.dart';
import 'package:loola_store/views/home_page/view.dart';
import 'package:loola_store/views/order_status/view.dart';
import 'package:loola_store/views/settings/view.dart';

class Components{


  static const List<Widget> screens = <Widget>[
    HomePage(),
    Favorites(),
    Settings(),
     OrderStatus(),
  ];
}
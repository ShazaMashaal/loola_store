import 'package:flutter/material.dart';
import 'package:loola_store/const/styles.dart';
import 'package:loola_store/views/home_page/components/cart_icon.dart';

AppBar customAppBar(String text,BuildContext context) {
  return  AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    actions: const [ Padding(
      padding: EdgeInsets.only(right: 20),
      child: CartIcon(),
    )] ,
    title:Text(text,style: titleTextStyle,),
    elevation: 0,
  );
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loola_store/const/colors.dart';
import 'package:loola_store/views/main_screen/components/custom_app_bar.dart';
import 'dart:math' as math;

import 'components/home_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar("الصفحة الرئيسية",context),
      body: const SingleChildScrollView (
        child: Padding(

          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: HomeItems(),

        ),
      ),
    );
  }

}

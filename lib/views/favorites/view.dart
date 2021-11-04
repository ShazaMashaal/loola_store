import 'package:flutter/material.dart';
import 'package:loola_store/views/home_page/components/discounts.dart';
import 'package:loola_store/views/main_screen/components/custom_app_bar.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar("قائمة الأمنيات",context),
      body: const SingleChildScrollView (
        child: Padding(

          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Discounts(),

        ),
      ),
    );
  }
}

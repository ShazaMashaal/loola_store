import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:loola_store/const/colors.dart';
import 'package:loola_store/views/home_page/components/offers.dart';
import 'package:loola_store/views/main_screen/components/custom_app_bar.dart';

import 'components/order_status_item.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: customAppBar("حالة الطلب", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context,int index){
              return            const OrderStatusItem();

            },


          ),
        ),
      ),
    );
  }
}

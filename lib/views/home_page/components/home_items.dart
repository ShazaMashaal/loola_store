import 'package:flutter/material.dart';
import 'package:loola_store/const/styles.dart';

import 'package:loola_store/views/home_page/components/search_text_field.dart';

import 'categories.dart';
import 'discounts.dart';
import 'offers.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        SearchTextField(),
        SizedBox(
          height: 25,
        ),

        Categories(),
        SizedBox(
          height: 10,
        ),
        Offers(),
         Text(
          "خصومات  ",
          style: titleTextStyle,
        ),
        Discounts()
      ],
    );
  }
}

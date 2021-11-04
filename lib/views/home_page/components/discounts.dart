import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:loola_store/const/colors.dart';
import 'package:loola_store/const/styles.dart';
import 'package:loola_store/shared/product_card.dart';

class Discounts extends StatelessWidget {
  const Discounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          height: 10,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1 / 1.9),
          itemBuilder: (BuildContext context, int index) {
            // return SizedBox(height: MediaQuery.of(context).size.height/2, child: Image.network("https://cdn.cliqueinc.com/posts/293912/summer-outfits-for-women-293912-1624554243777-image.700x0c.jpg",fit: BoxFit.fitWidth,));
            return LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {

                  return ProductCard(constraints: constraints);
            });
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loola_store/const/styles.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:  [
        const Text("الفئات  ",style: titleTextStyle,),
        const SizedBox(height: 10,),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
            itemCount:12,  gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4 ,crossAxisSpacing: 6,mainAxisSpacing: 25 ),
          itemBuilder: (BuildContext context, int index) {
              return Image.network("https://cdn.cliqueinc.com/posts/293912/summer-outfits-for-women-293912-1624554243777-image.700x0c.jpg",fit: BoxFit.fitWidth,);
          },
        ),

      ],
    );
  }
}

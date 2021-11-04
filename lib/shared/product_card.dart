import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:loola_store/const/colors.dart';

class ProductCard extends StatelessWidget {
  final  constraints;

  const ProductCard({Key? key, this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Image.network("https://i.pinimg.com/736x/89/6e/4f/896e4f54b0b8d27f882c4c96a4a58485.jpg",height: constraints.maxHeight/2.5,width: constraints.maxWidth,fit: BoxFit.cover,),

        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            height: constraints.maxHeight/3.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: const [
                    Icon(Icons.favorite_border),
                    Spacer(),

                    Text("165EGP",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("200EGP",style: TextStyle(color: Colors.grey,decoration:TextDecoration.lineThrough)),


                  ],),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [

                    const Text("هذا ",textAlign: TextAlign.right,overflow: TextOverflow.clip,),
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: bottomNavigationBarSelectedItem,
                      ),
                      itemCount: 5,
                      itemSize: 12.0,
                      direction: Axis.horizontal,
                      textDirection: TextDirection.rtl,
                    ),

                  ],),


              ],
            ),
          ),
        ),
        FlatButton(onPressed: (){}, child: const Text("إضافة الى السلة"),color: bottomNavigationBarSelectedItem,
          textColor: Colors.white,  minWidth: constraints.maxWidth,padding: const EdgeInsets.symmetric(vertical: 12),)
      ],
    );
  }
}

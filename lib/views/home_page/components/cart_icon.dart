import 'package:flutter/material.dart';
import 'package:loola_store/const/colors.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Center(child: Icon(Icons.local_grocery_store_sharp,color: bottomNavigationBarBackgroundColor,size: 30,)),
        Positioned(
            top: 4,
            left:0 ,
            child: CircleAvatar(
              backgroundColor: bottomNavigationBarSelectedItem,
              radius:10,
              child: Text("1",style: TextStyle(color: Colors.white)),
            ))
      ],
    );
  }
}

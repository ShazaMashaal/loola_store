import 'package:flutter/material.dart';
import 'package:loola_store/const/colors.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width/3.2,
      width:     MediaQuery.of(context).size.width/3.2,
      decoration: BoxDecoration(
          border: Border.all(color: bottomNavigationBarSelectedItem)
      ),
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.photo_camera_outlined,color:bottomNavigationBarSelectedItem ,),
          Text("إضافة صورة",style: TextStyle(color: Colors.grey),)

        ],
      ),),

    );
  }
}

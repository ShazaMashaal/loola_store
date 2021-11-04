import 'package:flutter/material.dart';
import 'package:loola_store/const/colors.dart';

class SettingsItem extends StatelessWidget {
  final String text;
  const SettingsItem({Key? key, required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Container(
          child: Directionality(textDirection: TextDirection.rtl,
            child:  ListTile(
              visualDensity: const VisualDensity(vertical: 2),
              title: Text(text,style: const TextStyle(fontWeight: FontWeight.bold),),
              trailing: const Icon(Icons.arrow_forward_ios_rounded,color: bottomNavigationBarSelectedItem,),

            ),
          ),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xFFABABAB))
              )
          ),
        )
      ],
    );
  }
}

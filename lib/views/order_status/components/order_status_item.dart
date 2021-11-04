import 'package:flutter/material.dart';
import 'package:loola_store/const/colors.dart';
import 'package:loola_store/views/home_page/components/offers.dart';

class OrderStatusItem extends StatelessWidget {
  const OrderStatusItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),

      child: Directionality(

        textDirection: TextDirection.rtl,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,

          children:  [
            Container(height: MediaQuery.of(context).size.width/3.4,
              width: MediaQuery.of(context).size.width/3.4 ,
              color: Colors.grey,
              child: MediaQuery.removePadding(context: context,
                removeTop: true,

                child: GridView.builder(
                  itemCount: imgList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(imgList[index],fit: BoxFit.cover,);

                  }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

                ) ,

              ),
            ),
            const SizedBox(width:10 ,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
                const Text("عدد المنتجات: 4",style: TextStyle(fontWeight: FontWeight.bold,fontSize:12)),
                const Text("الحالة: في الشحن",style: TextStyle(fontWeight: FontWeight.bold,fontSize:12)),
                const Text("تاريخ الطلب: 12/5/2020",style: TextStyle(fontWeight: FontWeight.bold,fontSize:12)),
                const Text("تاريخ الوصول: 12/5/2020",style: TextStyle(fontWeight: FontWeight.bold,fontSize:12)),
                const SizedBox(height: 2,),
                Row(
                  children: const [
                    Icon(Icons.flag,color: Colors.grey,),
                    Text("إبلاغ عن مشكلة",style: TextStyle(color: Colors.grey,decoration: TextDecoration.underline,fontSize:12),),
                  ],
                ),
                const SizedBox(height: 7,)
              ],
            ),
            Expanded(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width/4,
                  child:Column(
                    children:  [const Text("200EGP",style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 7,),
                      FlatButton(onPressed: (){}, child:const Text("اظهار المنتجات",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),color: bottomNavigationBarSelectedItem,textColor: Colors.white,),
                const SizedBox(height: 7,)

              ],


                  )
              ),
            )


          ],
        ),
      ),
    );
  }
}

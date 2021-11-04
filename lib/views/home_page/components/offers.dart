import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loola_store/const/colors.dart';
import 'package:loola_store/const/styles.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
final List<Widget> imageSliders = imgList
    .map((item) => ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        child: Image.network(item, fit: BoxFit.cover, width: double.infinity)))
    .toList();

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      const Text(
        "عروض  ",
        style: titleTextStyle,
      ),
      const SizedBox(
        height: 15,
      ),
      Column(
        children: [
          CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 7.0,
                  height: 7.0,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: bottomNavigationBarSelectedItem
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    ]);
  }
}

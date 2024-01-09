import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomSlider extends StatefulWidget {
  final List<Widget> items;

  const CustomSlider({Key? key, required this.items}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 270,
        child: Expanded(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 230,
              enlargeCenterPage: true,
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
            ),
            items: widget.items,
          ),
        ));
  }
}

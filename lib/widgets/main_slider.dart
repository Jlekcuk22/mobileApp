import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:ultraapp/utils/app_config.dart';

class MainSlider extends StatefulWidget {
  const MainSlider({super.key});

  @override
  State<MainSlider> createState() => _MainSliderState();
}

class _MainSliderState extends State<MainSlider> {
  final List<String> imageUrls = [
    'assets/images/slide1.png',
    'assets/images/slide2.png',
  ];

  int activeIndex = 0; // Track the active slide index

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 230,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                onPageChanged: (index, _) {
                  // Update the active slide index when the page changes
                  setState(() {
                    activeIndex = index;
                  });
                },
                aspectRatio: MediaQuery.of(context).size.width / 235,
              ),
              items: imageUrls.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        imageUrl,
                        width: double
                            .infinity, // Set width to fill the entire slider width
                        height: double
                            .infinity, // Set height to fill the specified slider height
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DotsIndicator(
            dotsCount: imageUrls.length,
            position: activeIndex,
            decorator: DotsDecorator(
              activeColor: AppConfig.primaryColor,
              color: AppConfig.gray,
              activeSize: const Size(26, 3), // Set the size for active dots
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              size: const Size(16, 3), // Set the size for inactive dots
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/components/block_review/review_rating.dart';

class ReviewsRatingBlock extends StatelessWidget {
  final double ratingValue;
  final int reviewCount;

  const ReviewsRatingBlock({
    Key? key,
    required this.ratingValue,
    required this.reviewCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 301,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -2,
            left: 0,
            child: Container(
              width: 147,
              height: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/rating_block.png'),
                ),
              ),
              child: Center(
                child: Text(
                  ratingValue.toString(),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 200),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReviewRating(
                          reviewCount: reviewCount,
                          numberOfRows: 1,
                          isRowLayout: false,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ReviewRating(
                  reviewCount: reviewCount,
                  numberOfRows: 5,
                  isRowLayout: true,
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 50,
              right: 0,
              child: SvgPicture.asset(
                'assets/icons/review_star.svg',
                width: 90,
                height: 98,
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ultraapp/utils/app_config.dart';

class ReviewRating extends StatelessWidget {
  final int reviewCount;
  final int numberOfRows;
  final bool isInRow;
  final bool isRowLayout;

  const ReviewRating({
    super.key,
    required this.reviewCount,
    this.numberOfRows = 1,
    this.isInRow = false,
    this.isRowLayout = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 12.5, 30, 22.5),
      child: isInRow ? buildReviewRow(reviewCount) : buildReviewColumn(),
    );
  }

  Widget buildReviewColumn() {
    return Column(
      children: List.generate(numberOfRows, (index) {
        return Column(
          children: [
            buildReviewRow(reviewCount, isRowLayout: isRowLayout),
            if (index != numberOfRows - 1) const SizedBox(height: 10),
          ],
        );
      }),
    );
  }

  Widget buildReviewRow(int count, {bool isRowLayout = true}) {
    if (isRowLayout) {
      return Row(
        children: [
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < count ? Icons.star : Icons.star_border,
                color: AppConfig.secondaryColor,
                size: 16,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Row(
            children: [
              Text(
                '$count',
                style: const TextStyle(
                  fontSize: 14,
                  color: AppConfig.gray500,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 4),
              const Text(
                'отзывов',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppConfig.gray400,
                ),
              )
            ],
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: [
              Text(
                '$count',
                style: const TextStyle(
                  fontSize: 14,
                  color: AppConfig.gray500,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 4),
              const Text(
                'отзывов',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppConfig.gray400,
                ),
              )
            ],
          ),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < count ? Icons.star : Icons.star_border,
                color: AppConfig.secondaryColor,
                size: 16,
              ),
            ),
          ),
        ],
      );
    }
  }
}

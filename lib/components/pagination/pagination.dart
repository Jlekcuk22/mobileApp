import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/utils/app_config.dart';

class Pagination extends StatefulWidget {
  final int totalPages;
  final Function(int)? onPageChanged;

  const Pagination({
    super.key,
    required this.totalPages,
    this.onPageChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _PaginationState createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  int currentPage = 1;

  void goToPage(int page) {
    if (page >= 1 && page <= widget.totalPages) {
      setState(() {
        currentPage = page;
      });
      if (widget.onPageChanged != null) {
        widget.onPageChanged!(page);
      }
    }
  }

  void nextPage() {
    final nextPage = currentPage + 1;
    if (nextPage <= widget.totalPages) {
      goToPage(nextPage);
    }
  }

  bool get isLastPage => currentPage == widget.totalPages;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: List.generate(widget.totalPages, (index) {
        final pageNumber = index + 1;
        if (pageNumber == 3) {
          return Row(
            children: [
              GestureDetector(
                onTap: () => goToPage(pageNumber),
                child: Container(
                  height: 36,
                  width: 37,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  padding: const EdgeInsets.fromLTRB(14, 9, 7, 8),
                  decoration: BoxDecoration(
                    color: currentPage == pageNumber
                        ? AppConfig.primaryColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    '$pageNumber',
                    style: TextStyle(
                        color: currentPage == pageNumber
                            ? Colors.white
                            : AppConfig.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
              ),
              if (!isLastPage)
                GestureDetector(
                  onTap: nextPage,
                  child: SvgPicture.asset('assets/icons/next_arrow.svg'),
                ),
              if (isLastPage)
                SvgPicture.asset(
                  'assets/icons/next_arrow.svg',
                  // ignore: deprecated_member_use
                  color: Colors.grey, // Сделаем иконку серой на последней странице
                ),
            ],
          );
        } else if (pageNumber != 4 && pageNumber != 5) {
          return GestureDetector(
            onTap: () => goToPage(pageNumber),
            child: Container(
              height: 36,
              width: 37,
              margin: const EdgeInsets.symmetric(horizontal: 3),
              padding: const EdgeInsets.fromLTRB(14, 9, 7, 8),
              decoration: BoxDecoration(
                color: currentPage == pageNumber
                    ? AppConfig.primaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                '$pageNumber',
                style: TextStyle(
                    color: currentPage == pageNumber
                        ? Colors.white
                        : AppConfig.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
          );
        } else {
          return const SizedBox(); // Пропускаем страницы 4 и 5
        }
      }),
    );
  }
}

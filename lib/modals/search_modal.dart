import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchModal extends StatefulWidget {
  const SearchModal({super.key});

  @override
  SearchModalState createState() => SearchModalState();
}

class SearchModalState extends State<SearchModal> {
  final TextEditingController _searchController = TextEditingController();
  bool _showCancelButton = false;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchInputChange);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchInputChange);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchInputChange() {
    setState(() {
      _showCancelButton = _searchController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const SizedBox(width: 8.0),
              Expanded(
                child: Container(
                  height: 38.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border:
                        Border.all(color: const Color(0xFFE5E7EB), width: 1.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SvgPicture.string(
                          '<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20 20L15 15M17 10C17 11.3845 16.5895 12.7379 15.8203 13.889C15.0511 15.0402 13.9579 15.9374 12.6788 16.4672C11.3997 16.997 9.99224 17.1356 8.63437 16.8655C7.2765 16.5954 6.02922 15.9287 5.05026 14.9498C4.07129 13.9708 3.4046 12.7235 3.13451 11.3657C2.86441 10.0078 3.00303 8.60033 3.53285 7.32125C4.06266 6.04216 4.95987 4.94891 6.11101 4.17974C7.26216 3.41057 8.61553 3.00003 10 3.00003C11.8565 3.00003 13.637 3.73753 14.9497 5.05028C16.2625 6.36304 17 8.14351 17 10V10Z" stroke="#D1D5DB" stroke-width="2.33333" stroke-linecap="round" stroke-linejoin="round"/><path d="M20.5 20.5L17 17" stroke="#D1D5DB" stroke-width="2.33333" stroke-linecap="round" stroke-linejoin="round"/></svg>',
                          width: 24,
                          height: 24,
                          color: const Color(0xFFD1D5DB),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            hintText: 'Поиск...',
                            hintStyle: TextStyle(color: Color(0xFFD1D5DB)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (_showCancelButton)
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 12.0),
                  child: GestureDetector(
                    onTap: () {
                      _searchController.clear();
                      setState(() {
                        _showCancelButton = false;
                      });
                    },
                    child: const Text(
                      'Отменить',
                      style: TextStyle(color: Color(0xFF0C111B)),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

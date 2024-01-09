import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ultraapp/utils/app_config.dart';


class ProductMemory extends StatefulWidget {
  final String text;
  final bool isActive;
  final VoidCallback? onPressed;
  final int index;
  final ValueChanged<int> onIndexChanged;

  const ProductMemory({
    Key? key,
    required this.text,
    this.isActive = false,
    this.onPressed,
    required this.index,
    required this.onIndexChanged,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProductMemoryState createState() => _ProductMemoryState();
}

class _ProductMemoryState extends State<ProductMemory> {
  bool isActive = false;

  @override
  void initState() {
    isActive = widget.isActive;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onPressed != null) {
          widget.onPressed!();
        }
        widget.onIndexChanged(widget.index);
      },
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(6.0),
          border: isActive
              ? Border.all(
                  color: AppConfig.gray800,
                  width: 1.0,
                )
              : Border.all(
                  color: AppConfig.gray500.withOpacity(0.1),
                  width: 1.0,
                ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: isActive ? 2 : 0, sigmaY: isActive ? 2 : 0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: isActive
                    ? Colors.white.withOpacity(0.7)
                    : Colors.transparent,
              ),
              child: Text(
                widget.text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isActive ? AppConfig.primaryColor : AppConfig.gray500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

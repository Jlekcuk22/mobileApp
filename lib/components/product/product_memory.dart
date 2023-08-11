import 'dart:ui';

import 'package:flutter/material.dart';

class ProductMemory extends StatelessWidget {
  final String text;
  final bool isActive;

  const ProductMemory({
    Key? key,
    required this.text,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(6.0),
        border: isActive
            ? Border.all(
                color: Colors.black,
                width: 1.0,
              )
            : Border.all(
                color: Colors.grey.withOpacity(0.1),
                width: 1.0,
              ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: isActive ? 2 : 0, sigmaY: isActive ? 2 : 0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color:
                  isActive ? Colors.white.withOpacity(0.7) : Colors.transparent,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isActive ? Colors.black : Colors.grey.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProductColor extends StatefulWidget {
  final String imageAsset;
  final double imageHeight;
  final double imageWidth;
  final bool isActive;
  final ValueChanged<bool>? onColorTapped;

  const ProductColor({
    Key? key,
    required this.imageAsset,
    required this.imageHeight,
    required this.imageWidth,
    this.isActive = false,
    this.onColorTapped,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProductColorState createState() => _ProductColorState();
}

class _ProductColorState extends State<ProductColor> {
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
        if (widget.onColorTapped != null) {
          widget.onColorTapped!(widget.isActive);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: widget.isActive
              ? Border.all(
                  color: Colors.black,
                  width: 1.0,
                )
              : null,
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(3.0),
        child: Image.asset(
          widget.imageAsset,
          height: widget.imageHeight,
          width: widget.imageWidth,
          alignment: Alignment.center,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/utils/app_config.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final String? subtitle;
  final List<Widget> children;
  final Color background;
  final TextStyle? titleStyle;
  final bool initiallyExpanded;
  final Widget? icon;
  final double borderRadius;
  final EdgeInsetsGeometry? tilePadding;

  const CustomExpansionTile({
    Key? key,
    required this.title,
    required this.children,
    required this.background,
    this.subtitle,
    this.titleStyle,
    this.initiallyExpanded = false,
    this.icon,
    this.borderRadius = 14.0,
    this.tilePadding,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _isExpanded = widget.initiallyExpanded;
    if (_isExpanded) {
      _controller.value = 0.5;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        color: widget.background,
      ),
      child: ExpansionTile(
        title: Text(
          widget.title,
          style: widget.titleStyle ??
              const TextStyle(
                color: AppConfig.gray800,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        trailing: RotationTransition(
          turns: Tween(begin: 0.0, end: 0.5).animate(_controller),
          child:
              widget.icon ?? SvgPicture.asset('assets/icons/down_circle.svg'),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        initiallyExpanded: _isExpanded,
        onExpansionChanged: (bool expanded) {
          setState(() {
            _isExpanded = expanded;
            if (_isExpanded) {
              _controller.forward();
            } else {
              _controller.reverse();
            }
          });
        },
        tilePadding: widget.tilePadding ?? const EdgeInsets.all(30.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: widget.children,
          ),
        ],
      ),
    );
  }
}

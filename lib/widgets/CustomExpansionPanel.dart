// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ultraapp/utils/app_config.dart';

class CustomExpansionPanel extends StatefulWidget {
  const CustomExpansionPanel({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomExpansionPanelState createState() => _CustomExpansionPanelState();
}

class _CustomExpansionPanelState extends State<CustomExpansionPanel> {
  bool _isPanelExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppConfig.gray200), // Border color
          borderRadius: BorderRadius.circular(14), // Border radius
        ),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Основные\nхарактеристики',
                style: TextStyle(
                  color: AppConfig.primaryColor, // Use the color you prefer
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                setState(() {
                  _isPanelExpanded = !_isPanelExpanded;
                });
              },
            ),
            if (_isPanelExpanded)
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    )),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'data',
                          style: TextStyle(
                              color: AppConfig.gray500,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Row(
                      children: [Text('data1')],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

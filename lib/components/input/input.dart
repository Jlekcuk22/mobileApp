import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultraapp/utils/app_config.dart';

class Input extends StatelessWidget {
  final String labelText;
  final String? placeholder;
  final String? iconSvgAsset;

  const Input(
      {Key? key, this.labelText = "", this.placeholder, this.iconSvgAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  labelText,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: AppConfig.gray600,
                  ),
                ),
                if (iconSvgAsset != null && iconSvgAsset!.isNotEmpty)
                  const SizedBox(width: 6),
                if (iconSvgAsset != null && iconSvgAsset!.isNotEmpty)
                  SvgPicture.asset(
                    iconSvgAsset!,
                    width: 16,
                    height: 16,
                    // ignore: deprecated_member_use
                    color: AppConfig.gray600,
                  ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: null,
              filled: true,
              fillColor: AppConfig.gray100,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppConfig.gray200),
                borderRadius: BorderRadius.circular(6.0),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: AppConfig.gray200),
                borderRadius: BorderRadius.circular(6.0),
              ),
              contentPadding: const EdgeInsets.all(14),
              hintText: placeholder,
              hintStyle: const TextStyle(
                color: AppConfig.gray800,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            autovalidateMode: AutovalidateMode.disabled,
          ),
        ],
      ),
    );
  }
}

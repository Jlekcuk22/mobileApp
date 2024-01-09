import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:ultraapp/utils/app_config.dart';

class PhoneFormField extends StatefulWidget {
  final String labelText;
  final String initialCountry;
  final ValueChanged<String> onPhoneNumberChanged;

  const PhoneFormField({
    Key? key,
    required this.labelText,
    required this.initialCountry,
    required this.onPhoneNumberChanged,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PhoneFormFieldState createState() => _PhoneFormFieldState();
}

class _PhoneFormFieldState extends State<PhoneFormField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_handlePhoneNumberChange);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handlePhoneNumberChange() {
    widget.onPhoneNumberChanged(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50.0,
      decoration: BoxDecoration(
        color: AppConfig.gray100,
        border: Border.all(color: AppConfig.gray200),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: InternationalPhoneNumberInput(
        inputBorder: InputBorder.none,
        onInputChanged: (PhoneNumber number) {
          " 61 133 133";
        },
        inputDecoration: const InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: '61 133 133',
            contentPadding: EdgeInsets.fromLTRB(5, 19, 0, 0),
            alignLabelWithHint: true,
            hintStyle: TextStyle(
                color: AppConfig.gray800,
                fontSize: 16,
                fontWeight: FontWeight.normal)),
        initialValue: PhoneNumber(isoCode: widget.initialCountry),
        keyboardType: TextInputType.phone,
      ),
    );
  }
}

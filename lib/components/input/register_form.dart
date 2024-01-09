import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ultraapp/components/input/input.dart';
import 'package:ultraapp/components/input/phone_input.dart';
import 'package:ultraapp/utils/app_config.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 42),
            const Input(
              labelText: "Имя",
              placeholder: "Alex",
              iconSvgAsset: "assets/icons/attention.svg",
            ),
            const SizedBox(height: 30),
            const Input(
              labelText: "Фамилия",
              placeholder: "Dex",
              iconSvgAsset: '',
            ),
            const SizedBox(height: 30),
            const Input(
              labelText: "День рождения",
              placeholder: "23.04.2022",
              iconSvgAsset: '',
            ),
            const SizedBox(height: 30),
            const Input(
              labelText: "IDNP",
              placeholder: "123456789123",
              iconSvgAsset: '',
            ),
            const SizedBox(height: 30),
            const Input(
              labelText: "Аванс (необезптельно)",
              placeholder: "",
              iconSvgAsset: '',
            ),
            const SizedBox(height: 30),
            PhoneFormField(
              labelText: '61 133 133',
              initialCountry: 'MD',
              onPhoneNumberChanged: (value) {
                if (kDebugMode) {
                  print('Phone number changed: $value');
                }
              },
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Checkbox(
                  value: _acceptTerms,
                  onChanged: (value) {
                    setState(() {
                      _acceptTerms = value!;
                    });
                  },
                ),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                            text: 'Я принимаю ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                          text: 'правила и условия сайта',
                          style: const TextStyle(
                              color: AppConfig.lightblue500,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed,
                              decorationColor: AppConfig.lightblue500),
                          // Add onTap functionality for the link
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppConfig.secondaryColor,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 83),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Оформить кредит',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset('assets/icons/send.svg'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

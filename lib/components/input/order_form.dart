import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ultraapp/components/input/input.dart';
import 'package:ultraapp/components/input/phone_input.dart';

class OrderForm extends StatefulWidget {
  const OrderForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OrderFormState createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              labelText: "IDNP",
              placeholder: "123456789123",
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
            const Input(
              labelText: "Электронная почта",
              placeholder: "adresa@gmail.com",
              iconSvgAsset: '',
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

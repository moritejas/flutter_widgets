import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeComponent extends StatefulWidget {
  const PinCodeComponent({super.key});

  @override
  State<PinCodeComponent> createState() => _PinCodeComponentState();
}

class _PinCodeComponentState extends State<PinCodeComponent> {
  // Variable to store the entered PIN code
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// Add this dependencies
      /// pin_code_fields: ^7.4.0

      body: PinCodeTextField(
        appContext: context,
        length: 6, // Number of digits in the PIN
        onChanged: (value) {
          setState(() {
            currentText = value;
          });
        },
        onCompleted: (value) {
          print("Completed PIN: $value");
        },
        // pinTheme: PinTheme(
        //   shape: PinCodeFieldShape.box,
        //   borderRadius: BorderRadius.circular(5),
        //   fieldHeight: 50,
        //   fieldWidth: 40,
        //   activeFillColor: Colors.blue[100],
        //   selectedFillColor: Colors.blue[50],
        //   inactiveFillColor: Colors.grey[200],
        // ),
        keyboardType: TextInputType.number,
        enableActiveFill: true,
      ),
    );
  }
}

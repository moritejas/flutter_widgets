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
      body: PinCodeTextField(
        appContext: context,
        length: 6, // Number of digits in the PIN
        obscureText: false, // Whether to obscure the text (for passwords)
        obscuringWidget: const Icon(Icons.circle), // Widget to show when obscured
        onChanged: (value) {
          setState(() {
            currentText = value;
          });
        },
        onCompleted: (value) {
          print("Completed PIN: $value");
        },
        // PinTheme to customize appearance
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box, // Shape of the PIN field
          borderRadius: BorderRadius.circular(5), // Border radius of the PIN fields
          fieldHeight: 50, // Height of each PIN field
          fieldWidth: 40, // Width of each PIN field
          activeFillColor: Colors.blue[100], // Color of the field when active
          selectedFillColor: Colors.blue[50], // Color when selected
          inactiveFillColor: Colors.grey[200], // Color when inactive
          activeColor: Colors.blue, // Border color when active
          selectedColor: Colors.blueAccent, // Border color when selected
          inactiveColor: Colors.grey, // Border color when inactive
        ),
        keyboardType: TextInputType.number, // Keyboard type for entering numbers
        enableActiveFill: true, // Whether to enable fill color for active state
        autoDisposeControllers: false, // Controls whether to dispose controllers automatically
        boxShadows: const [
          BoxShadow(blurRadius: 10, color: Colors.grey) // Add shadow effect to fields
        ],
        textInputAction: TextInputAction.done, // Action button for keyboard (done)
        cursorColor: Colors.blue, // Cursor color
        animationType: AnimationType.scale, // Animation when switching fields
        enablePinAutofill: true, // Enable autofill for PIN
        onTap: () {
          print("Tapped on PIN code field");
        },
        beforeTextPaste: (text) {
          return true; // Allow pasting of text into the PIN field
        },
      ),
    );
  }
}

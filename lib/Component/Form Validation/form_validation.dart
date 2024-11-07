import 'package:flutter/material.dart';

class FormValidationComponent extends StatefulWidget {
  const FormValidationComponent({super.key});

  @override
  State<FormValidationComponent> createState() =>
      _FormValidationComponentState();
}

class _FormValidationComponentState extends State<FormValidationComponent> {
  final _formKey = GlobalKey<FormState>();

  String? _name;
  String? _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,  // Automatically validates when user interacts
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.white), // White label text color
                  border: OutlineInputBorder(), // Outline style for input field
                  filled: true,  // Whether the background is filled
                  fillColor: Colors.grey, // Background color of the input field
                  prefixIcon: Icon(Icons.person, color: Colors.white), // Icon color
                  hintText: 'Enter your full name', // Hint text when field is empty
                  hintStyle: TextStyle(color: Colors.white), // White hint text color
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value;
                },
                keyboardType: TextInputType.name, // Keyboard type for name input
                textInputAction: TextInputAction.next, // Action button (Next) when typing
                style: const TextStyle(color: Colors.white), // White text color inside the field
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white), // White label text color
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                  hintText: 'Enter a valid email address',
                  hintStyle: TextStyle(color: Colors.white), // White hint text color
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  // Regular expression for validating email
                  final RegExp emailRegExp = RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  );
                  if (!emailRegExp.hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value;
                },
                keyboardType: TextInputType.emailAddress, // Keyboard type for email
                textInputAction: TextInputAction.done, // Action button (Done) when typing
                style: const TextStyle(color: Colors.white), // White text color inside the field
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, save the data
                    _formKey.currentState!.save();
                    // You can now use _name and _email
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Name: $_name, Email: $_email')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button background color
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0), // Padding inside the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white), // White text color on the button
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

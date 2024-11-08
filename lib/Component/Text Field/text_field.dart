import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: TextEditingController(), // For managing text in the field
          focusNode: FocusNode(), // Manages focus for the field
          decoration: InputDecoration(
            hintText: "Enter your name",
            labelText: "Name",
            helperText: "Please enter your full name",
            prefixIcon: const Icon(Icons.person),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {}, // Add functionality to clear text here
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green, width: 2.0),
            ),
            errorText: null, // Set to a string to display an error message
          ),
          keyboardType: TextInputType.text, // Defines keyboard type
          textInputAction: TextInputAction.done, // Defines the action button on the keyboard
          style: const TextStyle(color: Colors.black, fontSize: 16.0),
          textAlign: TextAlign.start, // Aligns text within the field
          textAlignVertical: TextAlignVertical.center, // Aligns text vertically
          cursorColor: Colors.blue,
          cursorHeight: 24.0,
          cursorWidth: 2.0,
          cursorRadius: const Radius.circular(2.0),
          obscureText: false, // Set to true for passwords
          obscuringCharacter: '*', // Character used for obscuring text
          maxLines: 1,
          minLines: 1,
          maxLength: 50, // Limit the number of characters
          buildCounter: (context, {required int currentLength, required bool isFocused, maxLength}) {
            return Text('$currentLength/$maxLength'); // Custom counter
          },
          onChanged: (text) {
            // Handle text change
          },
          onSubmitted: (text) {
            // Handle text submission
          },
          enabled: true, // Set to false to disable
          readOnly: false, // Set to true for a read-only field
          enableSuggestions: true, // Enable keyboard suggestions
          autocorrect: true, // Enable autocorrect
          autofillHints: const [AutofillHints.name], // Autofill suggestions
          enableInteractiveSelection: true, // Enable text selection
          expands: false, // True to fill available space
          scrollPadding: const EdgeInsets.all(20.0), // Padding when keyboard appears
          selectionControls: materialTextSelectionControls, // Provides selection controls
          toolbarOptions: const ToolbarOptions(
            copy: true,
            cut: true,
            paste: true,
            selectAll: true,
          ),
          scrollPhysics: const BouncingScrollPhysics(), // Controls scroll behavior
        ),
      ),
    );
  }
}

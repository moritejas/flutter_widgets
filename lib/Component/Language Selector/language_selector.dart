import 'package:flutter/material.dart';

class LanguageSelectorComponent extends StatefulWidget {
  final String title; // Property for custom title
  final List<String> languages; // Property for custom language list
  final String initialLanguage; // Property for initial language selection
  final TextStyle textStyle; // Property for customizing text style

  const LanguageSelectorComponent({
    super.key,
    this.title = 'Select Language', // Default value for the title
    this.languages = const ['English', 'Spanish', 'French', 'German'], // Default language list
    this.initialLanguage = 'English', // Default language
    this.textStyle = const TextStyle(fontSize: 20), // Default text style
  });

  @override
  State<LanguageSelectorComponent> createState() =>
      _LanguageSelectorComponentState();
}

class _LanguageSelectorComponentState extends State<LanguageSelectorComponent> {
  late String _selectedLanguage;
  late List<String> _languages;

  @override
  void initState() {
    super.initState();
    // Initialize selected language and languages list from the widget's properties
    _selectedLanguage = widget.initialLanguage;
    _languages = widget.languages;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // Using title property
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected Language: $_selectedLanguage',
              style: widget.textStyle, // Using textStyle property
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: _selectedLanguage,
              icon: const Icon(Icons.arrow_drop_down),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
              },
              items: _languages
                  .map<DropdownMenuItem<String>>((String language) {
                return DropdownMenuItem<String>(
                  value: language,
                  child: Text(language),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

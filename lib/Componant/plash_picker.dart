import 'package:flutter/material.dart';

class PlashPickerComponent extends StatefulWidget {
  const PlashPickerComponent({super.key});

  @override
  State<PlashPickerComponent> createState() => _PlashPickerComponentState();
}

class _PlashPickerComponentState extends State<PlashPickerComponent> {
  String _placeName = "Pick a place";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _placeName,
              style: const TextStyle(fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // final result = await showPlacePicker();
                // if (result != null) {
                //   setState(() {
                //     _placeName = result.formattedAddress; // Display the selected place
                //   });
                // }
              },
              child: const Text('Pick a Place'),
            ),
          ],
        ),
      ),
    );
  }

  // Future<PlaceAutocompleteResponse?> showPlacePicker() async {
  //   return await PlacesAutocomplete.show(
  //     context: context,
  //     apiKey: 'YOUR_API_KEY', // Replace with your Google API Key
  //     mode: Mode.fullscreen, // Mode of the place picker (fullscreen or overlay)
  //     language: 'en', // Language for the results
  //     components: [Component(Component.country, 'us')], // Optional: limit results to specific country
  //   );
  // }

}

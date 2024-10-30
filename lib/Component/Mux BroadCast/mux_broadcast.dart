import 'package:flutter/material.dart';

class MuxBroadcastComponent extends StatelessWidget {
  const MuxBroadcastComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ElevatedButton(onPressed: (){},
          child: const Text("This is Eleveted Button Component"))
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MediMeet());
}

class MediMeet extends StatelessWidget {
  const MediMeet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text('MediMeet'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('Welcome to MediMeet!'),
      ),
    )
     );
  }
}

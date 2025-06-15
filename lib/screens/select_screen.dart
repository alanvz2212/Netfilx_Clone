import 'package:flutter/material.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Image.asset('assets/Images/logo.png', height: 60),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

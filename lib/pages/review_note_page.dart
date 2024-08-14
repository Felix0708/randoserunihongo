import 'package:flutter/material.dart';

class ReviewNotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Note', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: const Text(
          'This is the Review Note Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

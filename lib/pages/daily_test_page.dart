import 'package:flutter/material.dart';

class DailyTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Test', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: const Text(
          'This is the Daily Test Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

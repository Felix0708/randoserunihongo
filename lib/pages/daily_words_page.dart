import 'package:flutter/material.dart';

class DailyWordsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Words', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: const Text(
          'This is the Daily Words Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

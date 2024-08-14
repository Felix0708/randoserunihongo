import 'package:flutter/material.dart';
import 'delete_id_page.dart';

class UserInfoPage extends StatefulWidget {
  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  String _nickname = "John Doe"; // Fake data for the nickname

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Information', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Nickname: $_nickname',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: _editNickname,
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildCalendar(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _logout,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Logout',
                style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _deleteID,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black87),
              child: const Text('Delete ID', style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ],
        ),
      ),
    );
  }

  void _editNickname() {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController nicknameController = TextEditingController(text: _nickname);
        return AlertDialog(
          title: const Text('Edit Nickname'),
          content: TextField(
            controller: nicknameController,
            decoration: const InputDecoration(hintText: "Enter new nickname"),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Save'),
              onPressed: () {
                setState(() {
                  _nickname = nicknameController.text;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildCalendar() {
    // Fake calendar data representation
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Center(
        child: const Text(
          'Calendar showing attendance and points\n(Fake Data)',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  void _logout() {
    // Fake logout logic
    Navigator.pushNamedAndRemoveUntil(context, '/intro', (route) => false);
  }

  void _deleteID() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DeleteIDPage()),
    );
  }
}

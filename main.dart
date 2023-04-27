import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var accounts = {
    'atom': 'neutron',
    'uncle': 'rich',
    'user': 'CE Lab',
    'anon': 'flakes',
  };

  var status = {
    'atom': 'admin',
    'uncle': 'admin',
    'user': 'user',
    'anon': 'user',
  };

  String _username = '';
  String _password = '';
  String _status = '';
  void _login() {
    if (accounts[_username] == _password) {
      setState(() {
        _status = 'Login successful';
      });
    } else {
      setState(() {
        _status = 'Invalid username or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(children: [
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
              onChanged: (value) {
                setState(() {
                  _username = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
            Text(_status)
          ]),
        ),
      ),
    );
  }
}

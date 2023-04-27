import 'package:flutter/material.dart';

class berhasil extends StatelessWidget {
  final String username;
  final String status;
  const berhasil({Key? key, required this.username, required this.status})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login result'),
        ),
        body: Center(
          child:
              Text("Login successful with username $username and role $status"),
        ));
  }
}

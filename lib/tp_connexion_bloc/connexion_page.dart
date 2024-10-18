import 'package:flutter/material.dart';

void main() => runApp(ConnexionApp());

class ConnexionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tecEmail = TextEditingController(text: "");
    final tecPwd = TextEditingController(text: "");

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            TextFormField(
              controller: tecEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: tecPwd,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}

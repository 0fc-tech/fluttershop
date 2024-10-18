import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: FutureBuilder(
              future: get(Uri.parse("https://api.zippopotam.us/fr/49000")),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (jsonDecode(snapshot.data!.body)
                      case {"places": [{"place name": String place}]}) {
                    return Text(place);
                  }
                  return Text("Format incorrect");
                } else {
                  return CircularProgressIndicator();
                }
              }),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'app/views/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          backgroundColor: Colors.deepOrange[300]),
      home: HomePage(),
    );
  }
}

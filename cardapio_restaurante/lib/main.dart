import 'package:flutter/material.dart';

import 'app/models/receita.dart';
import 'app/views/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Receita receita;

  const MyApp({Key key, this.receita}) : super(key: key);

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

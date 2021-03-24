import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Cozinhando em Casa'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.network(
              'https://cdn.pixabay.com/photo/2016/11/25/16/08/sushi-1858696_960_720.jpg'),
          Text("Sushi"),
        ],
      ),
    );
  }
}

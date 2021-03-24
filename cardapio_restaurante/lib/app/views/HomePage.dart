import 'package:cardapio_restaurante/app/components/cardCustom.dart';
import 'package:cardapio_restaurante/app/models/receita.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Cozinhando em Casa'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('lib/app/assets/receitas.json'),
          builder: (context, snapshot) {
            List<dynamic> receitas = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                Receita receita = Receita.fromJson(receitas[index]);
                return CardCustom(
                  receita: receita,
                );
              },
              itemCount: receitas == null ? 0 : receitas.length,
            );
          },
        ),
      ),
    );
  }
}

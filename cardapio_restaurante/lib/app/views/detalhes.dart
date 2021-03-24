import 'package:cardapio_restaurante/app/models/receita.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  final Receita receita;

  Detalhes({Key key, @required this.receita}) : super(key: key);

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
            receita.foto,
            fit: BoxFit.fill, //Para preencher todo o card
            height: 242,
            width: 450,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                receita.titulo,
                style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.restaurant,
                        color: Colors.white,
                      ),
                      Text(
                        "${receita.porcoes} porções",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      Text(
                        receita.tempodePreparo,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Ingredientes',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                receita.ingredientes,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Modo de Preparo',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: Text(
                receita.modoDePreparo,
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:cardapio_restaurante/app/models/receita.dart';
import 'package:cardapio_restaurante/app/views/detalhes.dart';
import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final Receita receita;

  const CardCustom({Key key, this.receita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detalhes(receita: receita)));
      },
      child: SizedBox(
        height: 250,
        child: Card(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.network(
                    receita.foto,
                    fit: BoxFit.fill, //Para preencher todo o card
                    height: 242,
                    width: 450,
                  ),
                  //O Container abaixo seria para dar um fundo opacity na imagem, aparecendo assim o texto bem visivel, independente da cor da foto
                  Container(
                    height: 242,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.deepOrange.withOpacity(0.7)
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      receita.titulo,
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

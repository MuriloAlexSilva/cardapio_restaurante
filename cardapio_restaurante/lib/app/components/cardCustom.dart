import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String image;
  final String name;
  final String rota;

  const CardCustom({Key key, this.image, this.name, this.rota})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(8.0),
      onPressed: () {
        Navigator.of(context).pushNamed(rota);
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
                    image,
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
                      name,
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

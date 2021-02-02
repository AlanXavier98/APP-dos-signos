import 'package:flutter/material.dart';
import 'package:signos/utils/cardSignos.dart';
import '../data/dadosSignos.dart' as colecao_signos;

class ListaSignos extends StatelessWidget {
  var signos = colecao_signos.signos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Características dos Signos"),
          centerTitle: true,
        ),
        body: GridView.count(
          padding: EdgeInsets.only(top: 20),
          crossAxisCount: 2,
          children: List.generate(
              signos.length, (index) => CardSignos(signos[index])),
        ));
  }
}

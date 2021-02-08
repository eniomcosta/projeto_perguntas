import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget {
  final perguntas = [
    "Primeira pergunta?",
    "Segunda pergunta?",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Resposta 2"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Resposta 3"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasAppState extends State<PerguntasApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Primeira pergunta?",
      "Segunda pergunta?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta 2"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta 3"),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
}

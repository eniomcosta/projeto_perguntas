import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';

import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _mapPerguntas = const [
    {
      "texto": "Primeira pergunta?",
      "respostas": [
        {"texto": "Resposta 1", "pontuacao": 10},
        {"texto": "Resposta 2", "pontuacao": 5},
        {"texto": "Resposta 3", "pontuacao": 1},
      ]
    },
    {
      "texto": "Segunda pergunta?",
      "respostas": [
        {"texto": "Resposta 4", "pontuacao": 10},
        {"texto": "Resposta 5", "pontuacao": 5},
        {"texto": "Resposta 6", "pontuacao": 1},
      ]
    },
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _mapPerguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  enunciado: _mapPerguntas[_perguntaSelecionada]['texto'],
                  respostas: _mapPerguntas[_perguntaSelecionada]['respostas'],
                  responder: _responder)
              : Resultado(pontuacaoTotal: _pontuacaoTotal)),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}

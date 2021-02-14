import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final String enunciado;
  final List<Map<String, Object>> respostas;
  final Function(int) responder;

  Questionario(
      {@required this.enunciado,
      @required this.respostas,
      @required this.responder});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(enunciado),
        ...respostas
            .map((r) => Resposta(r['texto'], () => responder(r['pontuacao'])))
            .toList(),
      ],
    );
  }
}

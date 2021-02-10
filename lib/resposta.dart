import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final Function responder;

  Resposta(this.texto, this.responder);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(texto),
      onPressed: responder,
    );
  }
}

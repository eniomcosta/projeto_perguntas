import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoTotal;

  Resultado({@required this.pontuacaoTotal});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Parabéns! Pontuação Total: $pontuacaoTotal",
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}

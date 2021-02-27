import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade700,
        appBar: AppBar(
          title: Center(
            child: Text("JUEGO DE DADOS"),
          ),
          backgroundColor: Colors.blueGrey.shade800,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rigthDiceNumber = 1;

  void dados() {
    setState(() {
      leftDiceNumber = (Random().nextInt(6)) + 1;
      rigthDiceNumber = (Random().nextInt(6)) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: boton(leftDiceNumber),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: boton(rigthDiceNumber),
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton boton(int posicion) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      color: Colors.orange.shade900,
      onPressed: () {
        dados();
      },
      child: Image.asset('images/dice$posicion.png'),
    );
  }
}

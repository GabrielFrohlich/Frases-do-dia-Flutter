import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _frases = [
    "Frase1",
    "Frase2",
    "Frase3",
    "Frase4",
    "Frase5",
    "Frase6",
    "Frase7",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Frases do dia"), backgroundColor: Colors.black87),
        body: Center(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    Text(_fraseGerada,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.italic,
                            color: Colors.black)),
                    ElevatedButton(
                        child:
                            Text("Nova Frase", style: TextStyle(fontSize: 20)),
                        onPressed: _gerarFrase,
                        style:
                            ElevatedButton.styleFrom(primary: Colors.black87))
                  ],
                ))));
  }
}

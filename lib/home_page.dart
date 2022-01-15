import 'package:duas_caras/jogo.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _jogar() {
    var moedas = ['bonita', 'feia'];
    var numeros = Random().nextInt(moedas.length);
    var resultado = moedas[numeros];
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1a0033),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/logo.png'),
            GestureDetector(
              onTap: _jogar,
              child: Image.asset('assets/images/botao_jogar.png'),
            ),
          ],
        ),
      ),
    );
  }
}

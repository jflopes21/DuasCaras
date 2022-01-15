import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String valor;

  Resultado(this.valor, {Key? key}) : super(key: key);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if (widget.valor == 'feia') {
      caminhoImagem = 'assets/images/moeda_feia.png';
    } else {
      caminhoImagem = 'assets/images/moeda_bonita.png';
    }

    return Scaffold(
      backgroundColor: const Color(0xff1a0033),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/images/botao_voltar.png'),
            )
          ],
        ),
      ),
    );
  }
}

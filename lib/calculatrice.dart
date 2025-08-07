import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({super.key});

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  double? resultat;
  String opereration = '';

  void _rafraichir() {
    setState(() {
      resultat = null;
      opereration = '';
    });
  }

  void operation(String oper) {
    setState(() {
      opereration = oper;
    });
  }

  void saisir(int nombre) {
    setState(() {
      if (resultat == null) {
        resultat = nombre.toDouble();
      } else {
        if (opereration.isNotEmpty) {
          switch (opereration) {
            case '+':
              resultat = resultat! + nombre;
              break;
            case '-':
              resultat = resultat! - nombre;
              break;
            case '×':
              resultat = resultat! * nombre;
              break;
            case '/':
              if (nombre != 0) {
                resultat = resultat! / nombre;
              } else {
                resultat = double.nan;
              }
              break;
          }
          opereration = '';
        } else {
          resultat = nombre.toDouble();
        }
      }
    });
  }

  Widget Button(String texte, {Function()? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        texte,
        style: TextStyle(fontSize: 24),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(70, 70),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    resultat != null
                        ? 'Resultat: ${resultat!.isNaN ? "Erreur" : resultat!.toStringAsFixed(4)}'
                        : 'Resultat: ',
                    style: TextStyle(fontSize: 32),
                  ),
                ],
              ),
              Spacer(),
              SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  for (int i = 0; i <= 9; i++)
                    Button('$i', onPressed: () => saisir(i)),
                ],
              ),
              SizedBox(height: 20),
              Wrap(
                spacing: 10,
                children: [
                  Button('+', onPressed: () => operation('+')),
                  Button('-', onPressed: () => operation('-')),
                  Button('*', onPressed: () => operation('×')),
                  Button('/', onPressed: () => operation('/')),
                ],
              ),
              SizedBox(height: 20),
              Button(
                'Rafraîchir',
                onPressed: _rafraichir,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

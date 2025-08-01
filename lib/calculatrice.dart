import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({super.key});

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  @override
  final TextEditingController valeur1Controller = TextEditingController();
  final TextEditingController valeur2Controller = TextEditingController();
  double resultat = 0;
  void addition() {
    double valeur1 = double.parse(valeur1Controller.text) ?? 0;
    double valeur2 = double.parse(valeur2Controller.text) ?? 0;
    setState(() {
      resultat = valeur1 + valeur2;
    });
  }

  void soustration() {
    double valeur1 = double.parse(valeur1Controller.text) ?? 0;
    double valeur2 = double.parse(valeur2Controller.text) ?? 0;
    setState(() {
      resultat = valeur1 - valeur2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const Text(
              "Calculatrice",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Valeur1"),
                    TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      controller: valeur1Controller,
                    )
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Valeur2"),
                    TextField(
                      controller: valeur2Controller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Résultat",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                SizedBox(
                  height: 14,
                ),
                Text("Resultat $resultat")
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 50,
              child: TextButton(
                  onPressed: soustration,
                  child: const Text("soustration"),
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 177, 44, 26),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextButton(
                  onPressed: addition,
                  child: const Text("addition"),
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0XFF1AB160),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImcCalcul extends StatefulWidget {
  const ImcCalcul({super.key});

  @override
  State<ImcCalcul> createState() => _ImcCalculState();
}

class _ImcCalculState extends State<ImcCalcul> {
  final TextEditingController tailleController = TextEditingController();
  final TextEditingController poidsController = TextEditingController();
  double resultat = 0;
  void caculIMC() {
    double poids = double.parse(poidsController.text) ?? 0;
    double taille = double.parse(tailleController.text) ?? 0;
    setState(() {
      resultat = poids / (taille * taille);
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
              "Calcul d'IMC",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Taille"),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  controller: tailleController,
                )
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Poids"),
                TextField(
                  controller: poidsController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )
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
                Text("Votre IMC est de $resultat")
              ],
            ),
            const SizedBox(
              height: 300,
            ),
            SizedBox(
              height: 50,
              child: TextButton(
                  onPressed: caculIMC,
                  child: const Text("Calculer"),
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



// Function caculIMC(double taille, double poids) {
//   double resultat = poids / (taille * taille);
//   print(
//     "Votre IMC est de $resultat",
//   );
// }

import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  final Function(int) onChangedStep;
  const Intro({super.key, required this.onChangedStep});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "Introduction",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          titleSpacing: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => widget.onChangedStep(0),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  text: "I. Présentation de Dart\n",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "Dart est un langage de programmation compilé cross-plateforme créé en 2011 par Google. Il peut aussi bien être utilisé pour des applications mobiles que pour des applications de bureau ou des applications web à l'aide de son framework Flutter.\n\n",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(text: "II. Similarités avec d'autres langages\n"),
                    TextSpan(
                      text:
                          "C'est également un langage orienté objet comme C++ ou Java.\nSa syntaxe est semblable à celle de Java ou JavaScript.\n\n",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

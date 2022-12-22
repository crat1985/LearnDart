import 'package:flutter/material.dart';

class IntroTuto extends StatefulWidget {
  final Function(int) onChangedStep;
  const IntroTuto({super.key, required this.onChangedStep});

  @override
  State<IntroTuto> createState() => _IntroTutoState();
}

class _IntroTutoState extends State<IntroTuto> {
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
                    fontSize: 14,
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
                          "C'est également un langage orienté objet comme C++ ou Java.\nSa syntaxe est semblable à celle de Java ou JavaScript. Elle peut également être comparée à celle de GoLang (aussi créé par Google).\n\n",
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

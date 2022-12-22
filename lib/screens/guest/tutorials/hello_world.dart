import 'package:flutter/material.dart';

class HelloWorldTuto extends StatefulWidget {
  final Function(int) onChangedStep;
  const HelloWorldTuto({super.key, required this.onChangedStep});

  @override
  State<HelloWorldTuto> createState() => _HelloWorldTutoState();
}

class _HelloWorldTutoState extends State<HelloWorldTuto> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "Hello World",
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
                  text: "I. Exemple de code\n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          "Chaque code Dart a besoin d'une fonction principale, appelée 'main' comme dans la plupart des langages de programmation compilés. La syntaxe est la suivante :\n\n",
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: "void ",
                  style: TextStyle(color: Colors.purple),
                  children: [
                    TextSpan(
                      text: "main ",
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: "() {\n  ",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    TextSpan(
                      text: "print",
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: "(",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    TextSpan(
                      text: '"Hello world !"',
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(
                      text: ")",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    TextSpan(
                      text: ";\n",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: "}",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

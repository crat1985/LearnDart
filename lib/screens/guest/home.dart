import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final Function(int) onChangedStep;
  const Home({super.key, required this.onChangedStep});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "Apprendre Dart",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Liste des tutoriels",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                    onPressed: () => widget.onChangedStep(1),
                    child: const Text("Introduction"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

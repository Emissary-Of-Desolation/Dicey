import 'package:flutter/material.dart';
import 'package:dicey/gradient_theme_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('D I C E Y'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromARGB(217, 64, 250, 197),
                  Color.fromARGB(236, 136, 123, 241)
                ],
              ),
            ),
          ),
        ),
        body: const GradientThemeContainer(Color.fromARGB(217, 64, 250, 197),
            Color.fromARGB(236, 136, 123, 241)),
      ),
    ),
  );
}

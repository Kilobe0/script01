import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Meu Primeiro Aplicativo"),
      ),
      body: const Center(
        child: Text("Hello World Flutter!"),
      ),
    ),
  ));
}

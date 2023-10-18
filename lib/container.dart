import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Container"),
          backgroundColor: const Color.fromARGB(255, 88, 207, 19),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              lamp(Colors.red, 200),
              lamp(Colors.yellow, 200),
              lamp(Colors.green, 200),
            ],
          ),
        ));
  }

  Container lamp(Color color, double size) {
    return Container(
              height: size,
              width: size,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: color,
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(100)),
            );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          fontFamily: 'PixelifySans',
          textTheme: const TextTheme(
            headlineLarge: TextStyle(fontSize: 100),
            headlineMedium: TextStyle(fontSize: 50),
            headlineSmall: TextStyle(fontSize: 20),
          )),
      home: const HomePage(),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color color;
  final String imagePath;
  final String text;

  const CustomContainer({
    Key? key,
    required this.color,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 720,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
            color: Theme.of(context).colorScheme.onSurface, width: 5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Colors.black54, width: 5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(imagePath, height: 150),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final String appBarTitle = "Aberrus";
    final String character1Name = "Sarkareth";
    final String character2Name = "Neltharion";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: TextStyle(
            fontSize: 50,
            fontFamily: 'PixelifySans',
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainer(
              color: Colors.purple,
              imagePath: "assets/images/sarkareth.png",
              text: character1Name,
            ),
            CustomContainer(
              color: Colors.lightBlue,
              imagePath: "assets/images/neltharion.png",
              text: character2Name,
            ),
          ],
        ),
      ),
    );
  }
}

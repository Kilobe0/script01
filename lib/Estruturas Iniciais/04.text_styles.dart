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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Aberrus",
            style: TextStyle(
                fontSize: 50,
                fontFamily: 'PixelifySans',
                fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 720,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black, width: 5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(color: Colors.black54, width: 5),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/images/sarkareth.png",
                            height: 150),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text("Sarkareth",
                          style: Theme.of(context).textTheme.headlineMedium),
                    ),
                  ],
                ),
              ),
              Container(
                width: 720,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black, width: 5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(color: Colors.indigo, width: 5),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/images/neltharion.png",
                            height: 150),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Neltharion",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

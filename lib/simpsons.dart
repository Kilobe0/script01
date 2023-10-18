import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
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
        title: const Text("Layout Modelo"),
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                color: Color.fromRGBO(254, 203, 0, 0.7),
                child: Text("A familia mais divertida do planeta!",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87)),
              ),
            )
          ],
        )
      ]),
    );
  }
}

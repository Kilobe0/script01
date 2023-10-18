import 'package:flutter/material.dart';

// *********************************
//
// Layout Modelo Básico - STATELESS
//
// *********************************
main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Column Row Nested'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _texto('Texto 1', 22),
                        _texto('Texto 2', 22),
                        _texto('Texto 3', 22),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _texto('Texto 4', 22),
                        _texto('Texto 5', 22),
                        _texto('Texto 6', 22),
                      ])
                ],
              )),
        ));
  }

  Container _texto(String msg, double fontSize) {
    return Container(
        color: Colors.green,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 10, bottom: 30),
        child: Text(
          msg,
          style: TextStyle(fontSize: fontSize),
        ));
  }
}

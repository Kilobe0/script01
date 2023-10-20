import 'package:flutter/material.dart';

class ArquivosPage extends StatelessWidget {
  const ArquivosPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Página de Arquivos'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              elevation: 9,
              padding: const EdgeInsets.all(8),
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const SizedBox(
              width: 150,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_outlined, color: Colors.white),
                  SizedBox(width: 15),
                  Text('Voltar', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ));
  }
}

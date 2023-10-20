import 'package:flutter/material.dart';
import 'package:roteiro1/05.tab_bar/pages/anuncios_page.dart';
import 'package:roteiro1/05.tab_bar/pages/dados_page.dart';
import 'package:roteiro1/05.tab_bar/pages/favoritos_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text("TabBar"),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.announcement),
              ),
              Tab(
                icon: Icon(Icons.cloud),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              ),
            ]),
          ),
          body: const TabBarView(
            children: [AnunciosPage(), DadosPage(), FavoritosPage()],
          )),
    );
  }
}

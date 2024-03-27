import 'package:flutter/material.dart';


import 'Animais.dart';
import 'Numeros.dart';
import 'Vogais.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Aprenda Inglês",style:TextStyle(color: Colors.white,)),
        bottom: TabBar(
          indicatorWeight: 4.0,
          indicatorColor: Colors.white, // Cor do fundo da aba selecionada
          labelColor: Colors.white, // Cor do texto da aba selecionada
          unselectedLabelColor: Colors.white.withOpacity(0.6), // Cor do texto das abas não selecionadas
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: [
            Tab(
              text: "Animais",
            ),
            Tab(
              text: "Números",
            ),
            Tab(
              text: "Vogais",
            ),
          ],
        ),
        backgroundColor: Colors.brown,
      ),
      body: TabBarView(

        controller: _tabController,
        children: [
          Animais(),
          Numeros(),
          Vogais(),
        ],
      ),
    );
  }
}

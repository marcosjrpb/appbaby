import 'package:appbaby/telas/Animais.dart';
import 'package:appbaby/telas/Numeros.dart';
import 'package:appbaby/telas/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text("Aprenda Inglês"),
        bottom: TabBar(
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
      ),
      body:TabBarView(
        controller: _tabController,
        children: [
          Animais(),
          Numeros(),
          Vogais(),
        ],
      ) ,

    );
  }
}

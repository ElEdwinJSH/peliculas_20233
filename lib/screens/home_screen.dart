import 'package:flutter/material.dart';
import 'package:peliculas_20233/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ], //actions es una lista
        title: const Center(child: Text('Peliculas de cine')),
      ),
      body: const Column(
        children: [CardSwiper(), MovieSlider()],
      ),
    );
  }
}
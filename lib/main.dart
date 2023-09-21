import 'package:flutter/material.dart';
import 'package:peliculas_20233/screens/screens.dart';

//mateap para pner todo rapidamente
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'details': (_) =>
            const DetailsScreen() //un contexto guarda informacion del historial que se ha anvegadp, el guion bajo es funcin anonima, no ay contexto,
      },
    );
  }
}

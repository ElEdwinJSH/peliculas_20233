import 'package:flutter/material.dart';
import 'package:peliculas_20233/providers/movies_provider.dart';
import 'package:peliculas_20233/screens/screens.dart';
import 'package:provider/provider.dart';

//mateap para pner todo rapidamente
void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override //ANTES S ECORRIA MYAPP PRIMERO, AHORA ES EL APPSTATE QUE TIENE L PROVIDER, MANEJADOR DE ESTADO.
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          //AVISA QUE HAY CAMBI ASI QUE SE ACTUALIZA,
          create: (_) => MoviesProvider(),
          lazy:
              false, //normalmetne es perezoso pero aqui hacemos que no sea asi e inicie al inicar la aplicacion
        )
      ],
      child: const MyApp(),
    ); //pide varios providers, depende si son varias peticiones http
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'details': (_) =>
            const DetailsScreen() //un contexto guarda informacion del historial que se ha anvegadp, el guion bajo es funcin anonima, no ay contexto,
      },
    );
  }
}

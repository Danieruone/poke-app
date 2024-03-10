import 'package:flutter/material.dart';
import 'package:poke_app/presentation/screens/pokemon_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Poke App'),
              centerTitle: true,
            ),
            body: const PokemonScreen()));
  }
}

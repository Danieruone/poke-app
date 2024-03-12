import 'package:flutter/material.dart';
import 'package:poke_app/domain/entities/pokemon_entity.dart';
import 'package:poke_app/presentation/providers/pokemon_provider.dart';
import 'package:provider/provider.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonProvider = context.watch<PokemonProvider>();
    return ListView.builder(
        itemCount: pokemonProvider.pokemonList.length,
        itemBuilder: (context, index) {
          final PokemonEntity pokemon = pokemonProvider.pokemonList[index];
          return Text(pokemon.name);
        });
  }
}

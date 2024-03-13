import 'package:flutter/material.dart';
import 'package:poke_app/domain/entities/pokemon_entity.dart';
import 'package:poke_app/presentation/providers/pokemon_provider.dart';
import 'package:provider/provider.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonProvider = context.watch<PokemonProvider>();
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
          itemCount: pokemonProvider.pokemonList.length,
          itemBuilder: (context, index) {
            final PokemonEntity pokemon = pokemonProvider.pokemonList[index];
            String? imagePosition =
                RegExp(r'/(\d+)/?$').firstMatch(pokemon.url)?.group(1);
            return Card(
              color: Colors.lightBlueAccent,
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: SizedBox(
                      width: 130,
                      child: Image.network(
                          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$imagePosition.png"),
                    ),
                  ),
                  Text(
                    pokemon.name,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ]),
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:poke_app/config/helpers/get_pokemon_list.dart';
import 'package:poke_app/domain/entities/pokemon_entity.dart';

class PokemonProvider extends ChangeNotifier {
  List<PokemonEntity> pokemonList = [];

  PokemonProvider() {
    getPokemonList();
  }

  Future<void> getPokemonList() async {
    final responseList = await GetPokemonList().getList();
    pokemonList = responseList;
    notifyListeners();
  }
}

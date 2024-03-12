import 'package:dio/dio.dart';
import 'package:poke_app/domain/entities/pokemon_entity.dart';
import 'package:poke_app/infrastructure/models/pokemons_model.dart';

class GetPokemonList {
  final _dio = Dio();

  Future<List<PokemonEntity>> getList() async {
    final response = await _dio.get("https://pokeapi.co/api/v2/pokemon");
    final pokemonsModel = PokemonsModel.fromJson(response.data);
    return [];
  }
}

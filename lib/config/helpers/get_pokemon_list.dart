import 'package:dio/dio.dart';

class GetPokemonList {
  final _dio = Dio();

  Future<void> getList() async {
    final response = await _dio.get("https://pokeapi.co/api/v2/pokemon");
    print(response);
  }
}

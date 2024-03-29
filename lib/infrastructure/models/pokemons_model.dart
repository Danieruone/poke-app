// To parse this JSON data, do
//
//     final pokemonsModel = pokemonsModelFromJson(jsonString);

import 'dart:convert';

import 'package:poke_app/domain/entities/pokemon_entity.dart';

PokemonsModel pokemonsModelFromJson(String str) =>
    PokemonsModel.fromJson(json.decode(str));

String pokemonsModelToJson(PokemonsModel data) => json.encode(data.toJson());

class PokemonsModel {
  final int count;
  final String next;
  final dynamic previous;
  final List<Result> results;

  PokemonsModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory PokemonsModel.fromJson(Map<String, dynamic> json) => PokemonsModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };

  List<PokemonEntity> toPokemonListEntity() => List<PokemonEntity>.from(results
      .map((result) => PokemonEntity(name: result.name, url: result.url)));
}

class Result {
  final String name;
  final String url;

  Result({
    required this.name,
    required this.url,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

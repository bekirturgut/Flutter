import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/services/pokedex_api.dart';
import 'package:pokedex/widgets/pokelist_item.dart';

class PokemonList extends StatefulWidget {
   // ignore: prefer_const_constructors_in_immutables
   PokemonList({super.key});

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonListFuture;

  @override
  void initState() {
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('pokemon List build çalıştı');
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> listem = snapshot.data!;

          return GridView.builder(
            itemCount: listem.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemBuilder: (context, index) {
                debugPrint('item builder çalıştı');
                return PokeListItem(pokemon: listem[index]);
              });
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Hata çıktı'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proje5/model/pokemon_model.dart';
import 'package:proje5/services/pokedex_api.dart';
import 'package:proje5/widgets/poke_list_item.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> ListeFuture;
  void initState() {
    // TODO: implement initState
    super.initState();
    ListeFuture = PokeAPi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: ListeFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _listem = snapshot.data!;

          return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemBuilder: (context, index) =>
                  PokeListItem(pokemon: _listem[index]));
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Veri Hatası."),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

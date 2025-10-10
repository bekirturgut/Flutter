import 'package:flutter/material.dart';
import 'package:proje5/widgets/app_title.dart';
import 'package:proje5/widgets/pokemon_list.dart';

class HomePageEkrani extends StatelessWidget {
  const HomePageEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: OrientationBuilder(
      builder: (context, orientation) => Column(
        children: [
          PokemonTitle(),
          Expanded(child: PokemonList()),
        ],
      ),
    ));
  }
}

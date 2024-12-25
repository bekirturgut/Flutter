import 'package:deneme/widgets/app_title.dart';
import 'package:deneme/widgets/pokemon_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Column(
          children: [
            AppTitle(),
            Expanded(child:  PokemonList()),
          ],
        ),
      ),
    );
  }
}

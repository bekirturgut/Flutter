import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:proje5/model/pokemon_model.dart';

class PkoeImgAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  PkoeImgAndBall({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    String imageAdress = "images/pokeball.png";
    return Stack(
      children: [
        Image.asset(imageAdress),
        CachedNetworkImage(imageUrl: pokemon.img ?? "")
      ],
    );
  }
}

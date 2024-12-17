import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proje5/constants/constants.dart';
import 'package:proje5/constants/ui_helper.dart';
import 'package:proje5/model/pokemon_model.dart';
import 'package:proje5/widgets/poke_img_and_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red[200],
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name!,
                style: Sabitler.getPokemonNameTextStyle(),
              ),
              Chip(label: Text(pokemon.type![0])),
              Expanded(child: PkoeImgAndBall(pokemon: pokemon))
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proje5/constants/constants.dart';
import 'package:proje5/constants/ui_helper.dart';

class PokemonTitle extends StatelessWidget {
  PokemonTitle({super.key});

  String imageAdress = "images/pokeball.png";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Sabitler.title,
                  style: Sabitler.getTitleTextStyle(),
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              imageAdress,
              width: 100.w,
              height: 100.w,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

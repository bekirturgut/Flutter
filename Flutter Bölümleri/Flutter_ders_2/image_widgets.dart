import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String img1 =
        "https://c4.wallpaperflare.com/wallpaper/947/301/218/marshmello-wallpaper-preview.jpg";
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            // en büyük orana sahip image dosyasına göre diğerlerini ayarlamaya yarar.
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset(
                      "assets/images/77.jpg",
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.grey,
                      child: Image.asset("assets/images/44.jpg")),
                ),
                Expanded(
                    child:
                        Container(child: Image.asset("assets/images/66.jpg"))),
              ],
            ),
          ),
          FadeInImage.assetNetwork(
              placeholder: "assets/images/Loading.gif", image: img1),
          //placeholder açılana kadar ne gösersin kısmını ayarlar.ÖNEMLİ
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}

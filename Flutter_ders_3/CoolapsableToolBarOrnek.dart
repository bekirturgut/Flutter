import 'package:flutter/material.dart';

class CollapsableToolBarOrnek extends StatelessWidget {
  const CollapsableToolBarOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            background: Image(
                image: NetworkImage(
                    "https://images.wallpapersden.com/image/download/ac-connor-connor_ZmdqZ2aUmZqaraWkpJRmbmdlrWZlbWU.jpg")),
          ),
          floating: true,
          title: Text(
            "DUBA LTD. ŞTİ.",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          backgroundColor: Colors.black54,
          expandedHeight:
              200, //Tamamen açıkken ne kadar yer kaplayacak onu ayarlarsın.
          // floating: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.amber[400],
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "Bekir Turgut Hapoğlu",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Image(
                        width: 100,
                        height: 150,
                        image: NetworkImage(
                            "https://media.licdn.com/dms/image/v2/D5603AQEnqGaozBE3ZQ/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1718247061213?e=1737590400&v=beta&t=9YGQGVSZjSZQTNvyD39IYyTz5UAybRQ53EtxblQcshI"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.amber[400],
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "Abdulkadir Alagöz",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Image(
                      width: 100,
                      height: 150,
                      image: NetworkImage(
                          "https://media.licdn.com/dms/image/v2/D4D03AQGbRJ5jrle8kg/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1700518616323?e=1737590400&v=beta&t=0Y3rehF13SOdQFxEmlpjvvfxa9hPo3zkBlUQ7m-bRWE"),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.amber[400],
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "Hasan Batuhan Kılıçkan",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Image(
                        width: 100,
                        height: 150,
                        image: NetworkImage(
                            "https://emojiisland.com/cdn/shop/products/Emoji_Icon_-_Smirk_face_large.png?v=1571606093"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.amber[400],
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "İbrahim Can Öztürk",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Image(
                        width: 100,
                        height: 150,
                        image: NetworkImage(
                            "https://w7.pngwing.com/pngs/625/201/png-transparent-shock-emoji-emoji-iphone-computer-icons-emoji-head-smiley-sticker-thumbnail.png"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.amber[400],
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "İbrahim Can Öztürk",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Image(
                        width: 100,
                        height: 150,
                        image: NetworkImage(
                            "https://w7.pngwing.com/pngs/625/201/png-transparent-shock-emoji-emoji-iphone-computer-icons-emoji-head-smiley-sticker-thumbnail.png"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.amber[400],
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "İbrahim Can Öztürk",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Image(
                        width: 100,
                        height: 150,
                        image: NetworkImage(
                            "https://w7.pngwing.com/pngs/625/201/png-transparent-shock-emoji-emoji-iphone-computer-icons-emoji-head-smiley-sticker-thumbnail.png"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.amber[400],
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "İbrahim Can Öztürk",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Image(
                        width: 100,
                        height: 150,
                        image: NetworkImage(
                            "https://w7.pngwing.com/pngs/625/201/png-transparent-shock-emoji-emoji-iphone-computer-icons-emoji-head-smiley-sticker-thumbnail.png"))
                  ],
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}

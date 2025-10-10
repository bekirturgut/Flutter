import 'package:flutter/material.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        shadowColor: Colors.black,
        elevation: 8,
        title: Text(
          "Kayit Listesi",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
      ),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            DividerWidgets(),
            CardWidgets(),
            Text("Merhaba Benim Adım Bekir Burda Ne Kadarda Çok Ben Var."),
            ElevatedButton(
              onPressed: () => {debugPrint("Selam Ben Elevated Button")},
              child: Icon(Icons.abc),
              style: ButtonStyle(
                iconSize: WidgetStatePropertyAll(50),
              ),
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView SingleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
          DividerWidgets(),
          CardWidgets(),
        ],
      ),
    );
  }
}

class DividerWidgets extends StatelessWidget {
  const DividerWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black,
      thickness: 1,
      height: 1,
      indent: 75,
      endIndent: 75,
    );
  }
}

class CardWidgets extends StatelessWidget {
  const CardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.black,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.grey,
        child: ListTile(
          leading: CircleAvatar(
            child: Image(
              image: NetworkImage(
                  "https://scontent.fesb3-1.fna.fbcdn.net/v/t39.30808-6/455644838_8027678663988720_8689631839719580386_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=cHdlDle4XRAQ7kNvgGgALP2&_nc_zt=23&_nc_ht=scontent.fesb3-1.fna&_nc_gid=AedclKnml9UrK2uPDa_G7qq&oh=00_AYCRTPI8tzbnnuwyD3Byf2hzg_ILMsin_jfCMELfdkNHJg&oe=67452F8D"),
            ),
            backgroundColor: Colors.grey,
          ),
          title: Text("Bekir Turgut Hapoğlu"),
          subtitle: Text("0507 173 9515"),
          trailing: Icon(
            Icons.computer,
            size: 50,
          ),
        ));
  }
}

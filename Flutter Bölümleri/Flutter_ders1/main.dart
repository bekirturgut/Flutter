import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  String _img1 =
      "https://preview.redd.it/uar2e1170s061.jpg?width=1080&crop=smart&auto=webp&s=25be204e79252f4634203b43d12909ce145f84a2";
  String _img2 = "https://wallpapercave.com/wp/wp8963425.jpg";
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Selam bu ilk uygulamam",
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: ExpendetWidgets,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.white,
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }

  List<Widget> get SorunluWidgets {
    return [
      Container(
        color: Colors.red,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.green,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.red,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.blue,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.red,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.pink,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.red,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.green,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.red,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.blue,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.red,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.pink,
        width: 75,
        height: 75,
      ),
    ];
  }

  List<Widget> get ExpendetWidgets {
    return [
      Flexible(
        flex: 2,
        child: Container(
          color: Colors.red,
          width: 100,
          height: 75,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.green,
          height: 75,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.red,
          height: 75,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.blue,
          height: 75,
        ),
      ),
    ];
  }

  Widget Row_Column_Ders() {
    return Container(
      color: Colors.cyan[200],
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.account_balance_wallet_outlined,
            size: 60,
            color: Colors.white,
          ),
          Row(
            children: [
              Text(
                "B",
                style: TextStyle(fontSize: 50),
              ),
              Text("E", style: TextStyle(fontSize: 50)),
              Text(
                "K",
                style: TextStyle(fontSize: 50),
              ),
              Text(
                "İ",
                style: TextStyle(fontSize: 50),
              ),
              Text(
                "R",
                style: TextStyle(fontSize: 50),
              )
            ],
          ),
          Icon(
            Icons.add_call,
            size: 60,
          ),
          Row(
            children: [
              Text(
                "B",
                style: TextStyle(fontSize: 50),
              ),
              Text("E", style: TextStyle(fontSize: 50)),
              Text(
                "K",
                style: TextStyle(fontSize: 50),
              ),
              Text(
                "İ",
                style: TextStyle(fontSize: 50),
              ),
              Text(
                "R",
                style: TextStyle(fontSize: 50),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget ContainerDersler() {
    return Center(
      child: Container(
        width: 300,
        height: 170,
        padding: EdgeInsets.all(20),
        child: Text(
          "TURGUT",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 60, color: Colors.white),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.grey,
            border: Border.all(width: 4, color: Colors.blueAccent),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                image: NetworkImage(_img2),
                fit: BoxFit.scaleDown,
                repeat: ImageRepeat.repeat),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(20, 10), blurRadius: 10),
              BoxShadow(
                  color: Colors.black, offset: Offset(-10, -20), blurRadius: 10)
            ]),
      ),
    );
  }
}

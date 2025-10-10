import 'package:flutter/material.dart';

class GridViewKullanimi extends StatelessWidget {
  const GridViewKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GirdView Kullanımı"),
          backgroundColor: Colors.amber,
        ),
        body: GridView.builder(
            itemCount: 100,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(5, 5),
                              blurRadius: 20)
                        ],
                        shape: BoxShape.circle,
                        border: Border.all(width: 1),
                        color: Colors.teal[100 * (index % 9)],
                        gradient: LinearGradient(
                            colors: [Colors.amber, Colors.red],
                            begin: Alignment(-1, -1),
                            end: Alignment(1, 1)),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://static.tumblr.com/1e487424db2a187aa5f7f1bb179fc511/s7qpxng/vFAo2g13e/tumblr_static_tumblr_static__focused_v3.jpg"),
                          fit: BoxFit.cover,
                        )),
                    margin: EdgeInsets.all(5),
                    alignment:
                        Alignment.lerp(Alignment(0, 0.5), Alignment(0, 1), 0),
                    child: Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(
                          "Merhaba Flutter ${index + 1}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.white),
                        ))),
                onTap: () {
                  debugPrint("$index BASILDI...");
                },
              );
            }));
  }
}


/*

GridView.extent(
        primary: false,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
        scrollDirection: Axis.horizontal,
        maxCrossAxisExtent: 400,
        children: [
          Container(
            child: Text(
              "Selam Bebek1",
              textAlign: TextAlign.center,
            ),
            color: Colors.blue,
            alignment: Alignment.center,
            decoration: BoxDecoration(),
          ),
          
        ],
      ),

*/
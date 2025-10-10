import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ders_5/model/user_model.dart';

class RemoteApiKullanimi extends StatefulWidget {
  const RemoteApiKullanimi({super.key});

  @override
  State<RemoteApiKullanimi> createState() => _RemoteApiKullanimiState();
}

class _RemoteApiKullanimiState extends State<RemoteApiKullanimi> {
  Future<List<User>> _getUserList() async {
    try {
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/users");
      List<User> UserListesi = [];
      if (response.statusCode == 200) {
        UserListesi =
            (response.data as List).map((e) => User.fromMap(e)).toList();
      }
      return UserListesi;
    } on DioError catch (error) {
      debugPrint(error.toString());
      return [];
    }
  }

  Future<List<User>>? Liste;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Liste = _getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Remote Api Kullanımı"),
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: Liste,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var UserList = snapshot.data!;
              return ListView.builder(
                itemCount: UserList.length,
                itemBuilder: (context, index) {
                  User suan = UserList[index];
                  return ListTile(
                    title: Text(suan.name + " = " + suan.email),
                    subtitle: Text(suan.address.toString()),
                    leading: CircleAvatar(
                      child: Text(suan.id.toString()),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

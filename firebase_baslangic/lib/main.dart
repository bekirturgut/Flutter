import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_baslangic/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(MyApp());
  } catch (e) {
    print("Firebase başlatma hatası VAAAAAARRRRRR: $e");
  }
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  late FirebaseAuth auth;   // firebase giriş kullanımı için
  final String _Mail = "turgut.hapoglu@gmail.com";
  final String _sifre = "bekirbekir";
  @override
  void initState() {
    auth = FirebaseAuth.instance;;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
    appBar: AppBar(
      title: Text("FireBase İlk Kullanım"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            createUserEmailAndPassword();
          }, child: Text("Email/Şifre Giriş"))
        ],
      ),
    ),
  )
);
}
  void createUserEmailAndPassword() async{
    var _UserCredential = (await auth.createUserWithEmailAndPassword(email: _Mail, password: _sifre));

    print(_UserCredential.toString());
  }
}

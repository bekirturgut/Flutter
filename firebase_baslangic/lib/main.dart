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
    print("Firebase bağlandiiiii");
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
  final String _Mail = "bekir.turgut.hapoglu@gmail.com";
  final String _sifre = "bekir.turgut.hapoglu@gmail.com";
  @override
  void initState() {
    auth = FirebaseAuth.instance;
    super.initState();

  auth.authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out! ,  AÇIK HESAP YOK ULAAAAAN');
    } else {
      print('User is signed in!  , AÇIK HESAP VAR ULAAAAAAN ${user.email} ve ${user.emailVerified}');
    }
  });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          }, child: Text("Email/Şifre Kayıt")),
          ElevatedButton(onPressed: () {
            LoginUserEmailAndPassword();
          }, child: Text("Email/Şifre Giriş")),
          ElevatedButton(onPressed: () {
            SignOutUser();
          }, child: Text("Email/Şifre Çıkış")),
          ElevatedButton(onPressed: () {
            DeleteUser();
          }, child: Text("Email/Şifre Sil"))
        ],
      ),
    ),
  )
);
}
  void createUserEmailAndPassword() async{
    try{
      var UserCredential = (await auth.createUserWithEmailAndPassword(email: _Mail, password: _sifre)); // firebase de mail ve şifre parametrelernini kullanarak hesap kayıt eder.
      var _myUser = UserCredential.user;

      await _myUser!.sendEmailVerification();
      if(_myUser!.emailVerified){
        print("GMAİLE MESAJ GÖNDERİLDİİİİİİİİİİİİİİ");
      }else{
        print("EMAİL ONAYLI GEÇEBİLİRSİİİN REİİİİİS");
      }

      print(UserCredential.toString());
    }catch(e)
    {
      print("\n\nHata alındı\n\n$e");
    }
  }
void LoginUserEmailAndPassword() async{
  try{
      auth.signInWithEmailAndPassword(email: _Mail, password: _sifre); // firebase hesap kontrolü yapar ev girşi gerçekleştirir.
      print("GİRİŞ BAŞARILI ŞEKİLDE GERÇEKLEŞTİ...");
    }catch(e)
    {
      print("\n\nHata alındı\n\n$e");
    }
}

void SignOutUser() async{
  try{
      await auth.signOut(); // firebase hesap çıkışı yapar..
      print("ÇIKIŞ BAŞARILI ŞEKİLDE GERÇEKLEŞTİ...");
    }catch(e)
    {
      print("\n\nHata alındı\n\n$e");
    }
}

  void DeleteUser() async{
    try{
      await auth.currentUser!.delete(); // oluan hesabı siler.
      print("HESAP SİLİNDİİİİ");
    }catch(e){
       print("\n\nHata alındı\n\n$e");
    }
  }
}


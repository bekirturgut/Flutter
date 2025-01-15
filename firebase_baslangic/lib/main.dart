import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_baslangic/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
   String _Mail = "bekir.turgut.hapoglu@gmail.com";
   final String _sifre = "yenisifre";
   final String _Mail2 = "tnk_mustafa_hapogl@hotmail.com";
   final String _sifre2 = "missstikkkk";

  String AnaEkranMesaj = "İŞLEM SEÇİNİZ";
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
          Container(child: Text(AnaEkranMesaj , style: TextStyle(color: Colors.black , fontSize: 20),textAlign: TextAlign.center,),
          decoration: BoxDecoration(border: Border.all(color: Colors.black ,width: 2) , borderRadius: BorderRadius.circular(10))),
          SizedBox(height: 75,),
          ElevatedButton(onPressed: () {
            signGmail();
          }, child: Text("Gmail Giriş")),
          ElevatedButton(onPressed: () {
            LoginWithPhoneNumber();
          }, child: Text("Telefon Giriş")),
          ElevatedButton(onPressed: () {
            LoginUserEmailAndPassword();
          }, child: Text("Email/Şifre Giriş")),
          SizedBox(height: 20,),
          Text("___________________________"),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            createUserEmailAndPassword();
          }, child: Text("Email/Şifre Kayıt")),
          ElevatedButton(onPressed: () {
            SignOutUser();
          }, child: Text("Hesap Çıkış")),
          ElevatedButton(onPressed: () {
            DeleteUser();
          }, child: Text("Hesap Sil")),
          ElevatedButton(onPressed: () {
            changePassword();
          }, child: Text("Şifre Değiştir")),
          ElevatedButton(onPressed: () {
            changeEmail();
          }, child: Text("Email Değiştir")),
          
        ],
      ),
    ),
  )
);
}


void LoginWithPhoneNumber() async{
  try{
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "+905071739515",
      verificationCompleted: (PhoneAuthCredential credential) async{ // giriş başarılı ise seni bu bloğa yönlendirir ve sana credential verir
        await auth.signInWithCredential(credential);
        AnaEkranMesaj = "NUMARA İLE GİRİŞ BAŞARILI...";
        print("GİRİŞ BAŞARILIIII......\n\n"+credential.toString()+"\n\n");
      }, 
      verificationFailed: (FirebaseAuthException e) {  // giriş başarısız ise sana hatayı döndürür ve bu bloğa gönderir
        AnaEkranMesaj = "HATA!!!";
      }, 
      codeSent: (String verificationId , int? resendToken) async{ // bu kısım kodu gönderdikten sonraki kısımdır kullanıcıya mesaj gönderilir ve ardından
                                                             // seni bu kod bloğuna yönlendirir sen burda kontrollerini yaparsın
        String _smsCode = "031224";
        var _credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: _smsCode);
        await auth.signInWithCredential(_credential);

      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // kodu gönderdin ve belli bir süre verdin o süre bittikten sonraki kısım bu bloktur
        AnaEkranMesaj = "KOD GİRİLMEDİ!!!"; 
      });
  }catch(e)
    {
      AnaEkranMesaj = "HATA!!!";
      print("\n\nHata alındı\n\n$e");
    }
    setState(() {
      
    });
}
void createUserEmailAndPassword() async{
    try{
      var UserCredential = (await auth.createUserWithEmailAndPassword(email: _Mail, password: _sifre)); // firebase de mail ve şifre parametrelernini kullanarak hesap kayıt eder.
      var myUser = UserCredential.user;

      await myUser!.sendEmailVerification();
      if(myUser.emailVerified){
        print("GMAİLE MESAJ GÖNDERİLDİİİİİİİİİİİİİİ");
      }else{
        print("EMAİL ONAYLI GEÇEBİLİRSİİİN REİİİİİS");
      }

      print(UserCredential.toString());
      AnaEkranMesaj = "KAYIT BAŞARILI!!!";
    }catch(e)
    {
      AnaEkranMesaj = "HATA!!!";
      print("\n\nHata alındı\n\n$e");
    }
    setState(() {
      
    });
  }
void LoginUserEmailAndPassword() async{
  try{
      await auth.signInWithEmailAndPassword(email: _Mail, password: _sifre); // firebase hesap kontrolü yapar ev girşi gerçekleştirir.
      print("GİRİŞ BAŞARILI ŞEKİLDE GERÇEKLEŞTİ...");
      AnaEkranMesaj = "GİRİŞ BAŞARILI ŞEKİLDE GERÇEKLEŞTİ...";
    }catch(e)
    {
      AnaEkranMesaj = "HATA!!!";
      print("\n\nHata alındı\n\n$e");
    }
    setState(() {
      
    });
}
void SignOutUser() async{
  try{
      var _user = GoogleSignIn().currentUser;
      if(_user != null) {
        await GoogleSignIn().disconnect();
        print("ÇIKIŞ BAŞARILI ŞEKİLDE GERÇEKLEŞTİ...");
        AnaEkranMesaj = "ÇIKIŞ BAŞARILI...";
        return;
      }
      await auth.signOut(); // firebase hesap çıkışı yapar..
      print("ÇIKIŞ BAŞARILI ŞEKİLDE GERÇEKLEŞTİ...");
      AnaEkranMesaj = "ÇIKIŞ BAŞARILI...";
    }catch(e)
    {
      AnaEkranMesaj = "HATA!!!";
      print("\n\nHata alındı\n\n$e");
    }
    setState(() {
      
    });
}
void DeleteUser() async{
    try{
      await auth.currentUser!.delete(); // oluan hesabı siler.
      print("HESAP SİLİNDİİİİ");
      AnaEkranMesaj = "HESAP SİLME BAŞARILI...";
    }catch(e){
      AnaEkranMesaj = "HATA!!!";
       print("\n\nHata alındı\n\n$e");
    }
    setState(() {
      
    });
  }
void changePassword() async{
    try{
      await auth.currentUser!.updatePassword("yenisifre");
      await auth.signOut();
      AnaEkranMesaj = "ŞİFRE DEĞİŞİKLİĞİ BAŞARILI...";
    } on FirebaseAuthException catch(e){
      if(e.code == "requires-recent-login"){
        var credential = EmailAuthProvider.credential(email: _Mail, password: _sifre);
        await auth.currentUser!.reauthenticateWithCredential(credential);
        await auth.currentUser!.updatePassword("newPassword");
        await auth.signOut();
        debugPrint("ŞİFRE DEĞİŞTİRİLDİ.........");
        AnaEkranMesaj = "ŞİFRE DEĞİŞİKLİĞİ BAŞARILI...";

      }
    }
    catch(e){
      AnaEkranMesaj = "HATA!!!";
       print("\n\nHata alındı\n\n$e");
    }
    setState(() {
      
    });
  }
void changeEmail() async{
    try{
      await auth.currentUser!.verifyBeforeUpdateEmail(_Mail2);
      await auth.signOut();
      AnaEkranMesaj = "EMAİL DEĞİŞİKLİĞİ BAŞARILI...";
    } on FirebaseAuthException catch(e){
      if(e.code == "requires-recent-login"){
        var credential = EmailAuthProvider.credential(email: _Mail, password: _sifre);
        await auth.currentUser!.reauthenticateWithCredential(credential);
        await auth.currentUser!.verifyBeforeUpdateEmail(_Mail2);
        _Mail = _Mail2;
        await auth.signOut();
        debugPrint("EMAİL DEĞİŞTİRİLDİ.........");
        AnaEkranMesaj = "EMAİL DEĞİŞİKLİĞİ BAŞARILI...";

      }
    }
    catch(e){
      AnaEkranMesaj = "HATA!!!";
       print("\n\nHata alındı\n\n$e");
    }
    setState(() {
      
    });
  }
void signGmail() async{
  try{
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn(); // burası google giriş ekranına yönlendirir

    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication; // girince bize bir google auth vericek onu bir değişkene veriyoruz.

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,            // burda başarılı giriş sonucu bilgilerini bu değişkenlere atılır idtoken ve accestoken .
      idToken: googleAuth?.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
    AnaEkranMesaj = "GMAİL GİRİŞ BAŞARILI...";
  }catch(e){
      AnaEkranMesaj = "HATA!!!";
       print("\n\nHata alındı\n\n$e");
    }
    setState(() {
      
    });
}
}

// google ile giriş yapmadan önce terminalden cd android ile klasöre git ve .\gradlew signinReport kodunun çalıştır.
// firebase de uygulamaya parmak izi eklemen lazım oda bu koddan sonra çıkan SHA1 ve SHA-256 kodu dur.
// sonra uygulama ayarlarından google_service.json dosyasını indirip android/app klasörüne atıyorsun.
// sonra anroid gradle ve android/app gradle a eklentiler yapılıyor mauel olarak.
// ama hata aldım ve baktım ki firebase yada flutter otomatikmen benim için eklemiş bile 
// android/app build.gradle da MinSdk diye bir yer var orayı ya 21 yada 23 olarak değiştir
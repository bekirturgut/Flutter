import 'package:cloud_firestore/cloud_firestore.dart';
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

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;


  @override
  Widget build(BuildContext context) {

    //IDler
    debugPrint("IDLER BURDA BAK BAK BAAAAAAK     ------${_firestore.collection('users').id}--------       ");
    debugPrint("IDLER BURDA BAK BAK BAAAAAAK     ------${_firestore.collection('users').doc().id}--------       "); // burda verilen ıd veri ekleyeceksen bu ıd üzerinden eklenecek her yeniden başlatmada bu ıd değişir
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
        children: [
          Container(child: Column(children: [
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black ,width: 2) , borderRadius: BorderRadius.circular(10)), child: Text(AnaEkranMesaj , style: TextStyle(color: Colors.black , fontSize: 20),textAlign: TextAlign.center,)),
          SizedBox(height: 20,),
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
          ],),),
          Text("--------------------------------------------------------------------------------------"),
          Container(child: Column(),),
          ElevatedButton(onPressed: (){
            VeriEkleAdd();
          }, child: Text("Veri Ekle Add")),
          ElevatedButton(onPressed: (){
            VeriEkleSet();
          }, child: Text("Veri Ekle Set")),
          ElevatedButton(onPressed: (){
            VeriGuncelle();
          }, child: Text("Veri Güncelle")),
          ElevatedButton(onPressed: (){
            VeriSil();
          }, child: Text("Veri Sil")),
          Text("--------------------------------------------------------------------------------------"),
          ElevatedButton(onPressed: (){
            VeriOkuOneTime();
          }, child: Text("Veri Oku One Time")),
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
        print("GİRİŞ BAŞARILIIII......\n\n$credential\n\n");
      }, 
      verificationFailed: (FirebaseAuthException e) {  // giriş başarısız ise sana hatayı döndürür ve bu bloğa gönderir
        AnaEkranMesaj = "HATA!!!";
      }, 
      codeSent: (String verificationId , int? resendToken) async{ // bu kısım kodu gönderdikten sonraki kısımdır kullanıcıya mesaj gönderilir ve ardından
                                                             // seni bu kod bloğuna yönlendirir sen burda kontrollerini yaparsın
        String smsCode = "031224";
        var credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);
        await auth.signInWithCredential(credential);

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
      var user = GoogleSignIn().currentUser;
      if(user != null) {
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
void VeriEkleAdd() async{
  Map<String , dynamic> eklenecekUser = {};
  eklenecekUser["isim"] = "BekirTurgutHapoğlu";
  eklenecekUser["yas"] = 21;
  eklenecekUser["ogrenciMi"] = true;
  eklenecekUser["diller"] = FieldValue.arrayUnion(["C","C#","Python","Flutter","Dart","Java","Kotlin"]); // firebase de array list eklemek farklı onda bunu kullanırız.
  eklenecekUser["olusmaZamani"] = FieldValue.serverTimestamp();  // servere eklenme tarihini ekler
  await _firestore.collection("users").add(eklenecekUser);  // users isimli veri koleksiyonu varsa ekler yoksa yenisini tanımlar.
}
void VeriEkleSet() async{
  //await _firestore.doc("users/kHELBoQP1qEI0BjzioYH").set({"okul" : "Necmettin Erbakan Üniversitesi"}); // var olan bilgileri siler ve verdiğin verileri yazar
  await _firestore.doc("users/kHELBoQP1qEI0BjzioYH").set({"Bölüm" : "Bilgisayar Mühendisliği"} , SetOptions(merge: true)); // merge true sayesinde verileri sıfırlamaz verilen bilgileri ekstra ekler veri kaybı yaşanmaz
}
void VeriGuncelle() async{
  await _firestore.doc("users/mtilNkGrU5FsVQnJxBoy").update({"isim":"Güncel Bekir","yas":"22","ogrenciMi":false}); // verilen ıd li kullanıcının verilerini bu şekilde guncelleyebiliriz
  // eğer güncellenecek veri grubu yoksa yenisini oluşturur soyisim güncelledim ama soyisimi kayıtta yok , soyisim değişkeni oluşturur.
  // ıd li kullanıcı yoksa hata verir
}
void VeriSil() async{
  await _firestore.doc("users/9PpOWaZZGAEuxY6FqhfA").update({"isim": FieldValue.delete()}); // verilen ıd deki kullanıcının isim verisini sildi
   await _firestore.doc("users/mtilNkGrU5FsVQnJxBoy").delete(); // verilen ıd deki kullanıcıyı tamamen sildi , ıd de kullanıcı yoksa hata vermiyor
}
void VeriOkuOneTime() async{
  var usersDocuments = await _firestore.collection("users").get(); //users koleksiyonunu alıp bri değişkene atarız
  debugPrint("BU KADAR VERİ VAR        --------"+usersDocuments.size.toString()+"---------           ");  // koleksiyonda kaç veri var onları yazdırırı.
  for(var eleman in usersDocuments.docs)
  {
    debugPrint("Eleman id : ${eleman.id}");
    for(var data in eleman.data().entries)
    {
      debugPrint("\t\tKey : ${data.key} ---------- Value : ${data.value}");
    }
  }

}
}

// google ile giriş yapmadan önce terminalden cd android ile klasöre git ve .\gradlew signinReport kodunun çalıştır.
// firebase de uygulamaya parmak izi eklemen lazım oda bu koddan sonra çıkan SHA1 ve SHA-256 kodu dur.
// sonra uygulama ayarlarından google_service.json dosyasını indirip android/app klasörüne atıyorsun.
// sonra anroid gradle ve android/app gradle a eklentiler yapılıyor mauel olarak.
// ama hata aldım ve baktım ki firebase yada flutter otomatikmen benim için eklemiş bile 
// android/app build.gradle da MinSdk diye bir yer var orayı ya 21 yada 23 olarak değiştir

// firestore veri eklemede şöyle bişi var veri eklemeyi public yapman lazım yoksa hata veriyor onu ileriki projelerinde düzeltirsin artık
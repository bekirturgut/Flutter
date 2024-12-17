import 'package:ders6/data/local_storage.dart';
import 'package:ders6/models/task_model.dart';
import 'package:ders6/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

final locator = GetIt.instance;

Future<void> setupHive()async{
  await Hive.initFlutter();
  Hive.registerAdapter(TaskAdapter());
  var TaskBox = await Hive.openBox<Task>("tasks");
  TaskBox.values.forEach((eleman){
    if(eleman.olusmaZamani.month != DateTime.now().month){
      TaskBox.delete(eleman.id);
    }
  });
}

void setup() {
  locator.registerSingleton<LocalStorage>(HiveLocalStorage());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await setupHive();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To Do App",
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              elevation: 3,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black))),
      home: const HomePage(),
    );
  }
}

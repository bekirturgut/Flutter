import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
part 'task_model.g.dart';

@HiveType(typeId: 1)
class Task extends HiveObject{
  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  final DateTime olusmaZamani;

  @HiveField(3)
  bool tamamMi;

  Task(
      {required this.id,
      required this.name,
      required this.olusmaZamani,
      required this.tamamMi});

  factory Task.olustur({required String name, required DateTime olusmaZamani}) {
    return Task(
        id: const Uuid().v1(),
        name: name,
        olusmaZamani: olusmaZamani,
        tamamMi: false);
  }
}
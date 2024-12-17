import 'package:ders6/data/local_storage.dart';
import 'package:ders6/main.dart';
import 'package:ders6/models/task_model.dart';
import 'package:ders6/widgets/custom_search.dart';
import 'package:ders6/widgets/task_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Task> _AllTasks;
  late LocalStorage _localStorage;

  @override
  void initState() {
    super.initState();
    _localStorage = locator<LocalStorage>();
    _AllTasks = <Task>[];
    _getAllTaskFromDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () {
            _ShowButtonAddTask(context);
          },
          child: const Text(
            "Bugün Neler Yapacaksın !",
            style: TextStyle(
                color: Colors.black,
                shadows: [BoxShadow(blurRadius: 40, color: Colors.black)]),
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                _ShowButtonAddTask(context);
              },
              icon: const Icon(
                Icons.add,
                size: 40,
                shadows: [BoxShadow(color: Colors.black, blurRadius: 40)],
              )),
          IconButton(
              onPressed: () {
                _showSearchPage();
              },
              icon: const Icon(
                Icons.search_sharp,
                size: 40,
                shadows: [BoxShadow(color: Colors.black, blurRadius: 40)],
              )),
        ],
      ),
      body: _AllTasks.isNotEmpty
          ? ListView.builder(
              itemCount: _AllTasks.length,
              itemBuilder: (context, index) {
                var _oanki = _AllTasks[index];
                return Dismissible(
                  background: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.delete),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Bu Görev Siliniyor...")
                    ],
                  ),
                  onDismissed: (direction) {
                    var silinecekGorev = _AllTasks[index];
                    setState(() {
                      _AllTasks.removeAt(index);
                    });

                    _localStorage.deleteTask(task: silinecekGorev);
                  },
                  key: Key(_oanki.id),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: TaskListItem(task: _oanki),
                  ),
                );
              },
            )
          : Center(
              child: Text(
                "Herhangi Bir Görev Mevcut Değildir.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    shadows: [Shadow(color: Colors.black, blurRadius: 40)]),
              ),
            ),
    );
  }

  void _ShowButtonAddTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context)
                  .viewInsets
                  .bottom), //klavye vs açılır üstüne gelmemesini sağlar
          width: MediaQuery.of(context).size.width,
          child: ListTile(
            title: TextField(
              autofocus: true,
              style: const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                hintText: "Görev Giriniz...",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              onSubmitted: (value) {
                Navigator.of(context).pop();
                if (value.length > 3) {
                  DatePicker.showTimePicker(context, showSecondsColumn: false,
                      onConfirm: (time) async {
                    var YeniEklenecekGorev =
                        Task.olustur(name: value, olusmaZamani: time);
                    _AllTasks.add(YeniEklenecekGorev);
                    await _localStorage.addTask(task: YeniEklenecekGorev);
                    setState(() {});
                  });
                }
              },
            ),
          ),
        );
      },
    );
  }

  void _getAllTaskFromDb() async {
    _AllTasks = await _localStorage.getAllTask();
    setState(() {});
  }

  void _showSearchPage() async {
    await showSearch(
        context: context, delegate: CustomSearchDelegate(allTasks: _AllTasks));
    _getAllTaskFromDb();
  }
}

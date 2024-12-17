import 'package:ders6/data/local_storage.dart';
import 'package:ders6/main.dart';
import 'package:ders6/models/task_model.dart';
import 'package:ders6/widgets/task_list_item.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  final List<Task> allTasks;

  CustomSearchDelegate({required this.allTasks});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query.isEmpty ? null : query = '';
          },
          icon: const Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return GestureDetector(
      onTap: () {
        close(context, null);
      },
      child: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
        size: 24,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Task> filteredList = allTasks
        .where(
            (gorev) => gorev.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return filteredList.length > 0
        ? ListView.builder(
            itemBuilder: (context, index) {
              var _oankiListeElemani = filteredList[index];
              return Dismissible(
                background: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Bu Görev Siliniyor...'),
                  ],
                ),
                key: Key(_oankiListeElemani.id),
                onDismissed: (direction) async {
                  filteredList.removeAt(index);
                  await locator<LocalStorage>()
                      .deleteTask(task: _oankiListeElemani);
                },
                child: TaskListItem(task: _oankiListeElemani),
              );
            },
            itemCount: filteredList.length,
          )
        : const Center(
            child: Text(
              'Arama Bulunamadı...',
              style: TextStyle(fontSize: 20),
            ),
          );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}

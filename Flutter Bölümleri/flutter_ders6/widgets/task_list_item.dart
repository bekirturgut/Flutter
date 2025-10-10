import 'package:ders6/data/local_storage.dart';
import 'package:ders6/main.dart';
import 'package:ders6/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskListItem extends StatefulWidget {
  Task task;
  TaskListItem({super.key, required this.task});

  @override
  State<TaskListItem> createState() => _TaskListItemState();
}

class _TaskListItemState extends State<TaskListItem> {
  final TextEditingController _taskNameController = TextEditingController();
  late LocalStorage _localStrorage;
  @override
  void initState() {
    super.initState();
    _localStrorage = locator<LocalStorage>();
    _taskNameController.text = widget.task.name;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.2), blurRadius: 10)
        ],
      ),
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        trailing: Text(
          "${DateFormat.yMd().format(widget.task.olusmaZamani)}\n${DateFormat.jm().format(widget.task.olusmaZamani)}",
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.end,
        ),
        title: widget.task.tamamMi
            ? Text(
                widget.task.name,
                style: const TextStyle(
                    decoration: TextDecoration.lineThrough, color: Colors.grey),
              )
            : TextField(
                textInputAction: TextInputAction.done,
                minLines: 1,
                maxLines: null,
                controller: _taskNameController,
                decoration: const InputDecoration(border: InputBorder.none),
                onSubmitted: (value) {
                  if (value.length > 3) {
                    widget.task.name = value;
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
                },
              ),
        leading: GestureDetector(
            onTap: () async {
              widget.task.tamamMi = !widget.task.tamamMi;
              await _localStrorage.updateTask(task: widget.task);
              setState(() {});
            },
            child: widget.task.tamamMi
                ? const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 30,
                  )
                : const Icon(
                    Icons.circle_outlined,
                    color: Colors.grey,
                    size: 30,
                  )),
      ),
    );
  }
}

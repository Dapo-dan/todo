import 'dart:convert';

import 'package:get/get.dart';
import 'package:todo/app/core/utils/keys.dart';
import 'package:todo/app/data/models/task.dart';
import 'package:todo/app/data/services/storage/services.dart';

class TaskProvider {
  final StorageService _storage = Get.find<StorageService>();

// Sample of data stored in the local storage
// {'tasks': [{
//   'title': 'Work',
//   'color': '#ff123456',
//   'icon' : 0xe123
// }]}

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}

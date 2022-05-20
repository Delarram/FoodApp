
import 'package:flutter/cupertino.dart';
import 'package:foodapp/models/task_model.dart';

class TodoModel extends ChangeNotifier {

  List<TaskModel> taskList = [];
  int index = 0;
  addTaskInList() {
    TaskModel taskModel = TaskModel(
        title: taskList.length.toString(),
        detail: taskList.length.toString(),
        icon: taskList.length.toString());
    taskList.add(taskModel);
    notifyListeners();
  }

  reset() {
    // TaskModel taskModel =  taskList.clear();
    notifyListeners();
  }


}

// material.dart contains foundation.dart package so to keep it light  use the foundation.dart
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'First Task'),
    Task(name: 'Second Task'),
    Task(name: 'Third Task'),
  ];
// We made tasks class private as in adding tasks function we just  dont add tasks by tasks.add() in future and
// keep our tasks private in the class

// Unmodifiablelistview is a list which is another version of List data type and NOT a listview
// It is like a view of another list

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
    // Returning unmodifiable listview of _tasks which can be accessed to show name, checkbox of tasks
  }

  int get taskCount {
    return _tasks.length;
  }
  // get used for a getter functions. They are like normal functions but for get method i.e. to return a value
  // Similar are setter functions. Both only have different syntax but are similar to normal function with different uses

  void newTask(String value) {
    // tasks.add(Task(name: 'yoyo'));
    // The above is  run time error as the list is unmodifiable

    _tasks.add(Task(name: value));
    notifyListeners();
    // add task of type widget from the Task.dart file which returns a task
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  // Function to delete task
  void deletetask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

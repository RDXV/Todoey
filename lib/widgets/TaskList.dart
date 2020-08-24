import 'package:flutter/material.dart';
import 'TaskTile.dart';
import 'package:todoey/models/taskData.dart';
import 'package:provider/provider.dart';

// class TasksList extends StatefulWidget {
// final List<Task> tasks;
// TasksList(this.tasks);
// To use  tasks inside our state we havve to use widget.task
//   @override
//   _TasksListState createState() => _TasksListState();
// }

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        // Listview important for scrollable lists else errors as list goes longer and goes out of screen
        // Plus this saves memory as loads only those visible on screen

        return ListView.builder(
          itemBuilder: (context, index) {
            final currentTask = taskData.tasks[index];
            // For saving the code and  understandability
            return TaskTile(
              // earlier replace all (Provider.of<TaskData>(context)) with (widgets)
              taskTitle: currentTask.name,
              // Replace all Provider.of<TaskData>(context) with taskData because we used the consumer widget which
              // does reduce the words by the builder method
              // Take care of syntax errors
              isChecked: currentTask.isDone,
              checkboxCallback: (bool checkBoxState) {
                taskData.updateTask(currentTask);
                // tasks[index] gives the current index task

                // setState(
                //   () {
                //     Provider.of<TaskData>(context, listen: false)
                //         .tasks[index]
                //         .toggleDone();
                //   },
                // );
                // Provider.of<TaskData>(context, listen: false)
                //     .tasks[index]
                //     .toggleDone();

                // Provider.of<Task>(context)
              },
              longPressCallback: () {
                taskData.deletetask(currentTask);
              },
            );
          },
          // Important
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
// This ListView builder saves resources

import 'package:flutter/material.dart';
import 'package:todoey/models/taskData.dart';
// class TaskTile extends StatefulWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;

//   void checkBoxcallback(bool checkBoxState) {
//     setState(() {
//       isChecked = checkBoxState;
//     });
//   }

//   int i = 0;
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'This is a task ${i++}',
//         style: TextStyle(
//           decoration: isChecked ? TextDecoration.lineThrough : null,
//         ),
//       ),
//       trailing: TaskCheckbox(
//           checkBoxState: isChecked, toggleCheckbox: checkBoxcallback),
//     );
//   }
// }

// class TaskCheckbox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function toggleCheckbox;

//   TaskCheckbox({this.checkBoxState, this.toggleCheckbox});

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkBoxState,
//       onChanged: toggleCheckbox,
//     );
//   }
// }

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.longPressCallback});

  // void checkBoxcallback(bool checkBoxState) {
  //   setState(() {
  //     isChecked = checkBoxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

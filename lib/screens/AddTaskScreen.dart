import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTask;

  AddTaskScreen(this.addTask);

  @override
  Widget build(BuildContext context) {
    String newTaskName;
    // Everytime the app builds itself, the newTaskname will be created and used for input task
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              onChanged: (newString) {
                newTaskName = newString;
                // Changes everytime you type something so use it when pressed the ADD button
              },
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                // print('button pressed');
                // use function addTask
                addTask(newTaskName);

                // add task
              },
              child: Text(
                'ADD',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
// import 'package:todoey/screens/addTaskScreen.dart';
import 'package:todoey/widgets/TaskList.dart';
import 'AddTaskScreen.dart';
import 'package:todoey/models/taskData.dart';

// Widget buildBottomSheet(BuildContext context) {
//   return Container();
// } 1

// class TasksScreen extends StatefulWidget {
//   @override
//   _TasksScreenState createState() => _TasksScreenState();
// }

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen((newTitle) {
                    // print(newTitle);

                    // setState(() {
                    //   tasks.add(Task(name: newTitle));
                    // });
                    Provider.of<TaskData>(context, listen: false)
                        .newTask(newTitle);
                    // listen:false added exclusively
                    // the above adds a new task by using provider.of() method and calling the newTask() function
                    Navigator.pop(context);
                  }));
          // showModalBottomSheet(
          //     context: context, builder: (context) => Container());
          // same as 1
          // showModalBottomSheet(context: context, builder: buildBottomSheet);
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 30.0, right: 30.0, top: 60.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              // color: Colors.white,
              child: TasksList(),
              height: 300.0,
            ),
          ),
        ],
      ),
    );
  }
}
// In order to take the user input of the task and  print it or add it, make a callback of AddTask

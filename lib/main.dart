import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/TasksScreen.dart';
import 'models/taskData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      // builder is deprecated
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

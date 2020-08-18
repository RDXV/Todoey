class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false}); //default value

  void toggleDone() {
    isDone = !isDone;
  }
}

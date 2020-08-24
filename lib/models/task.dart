class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false}); //default value

  void toggleDone() {
    isDone = !isDone;
  }
}
// notifylisteners() used when the class extends changenotifier method
// NOTE- the changenotifier method is not same as changenotifierprovider which is held at top of the tree declared at
// main.dart file . The changenotifierprovider should be put as high as possible so as to accessible to all else errors

// We created the taskData class to store tasks in it as we hhad to declare a class extending changenotifier and
// storing data with functions having notifylisteners

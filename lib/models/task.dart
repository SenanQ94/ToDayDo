class Task {
  String name;

  bool isDone;

  Task({
    required this.name,
    this.isDone = false,
  });

  Task.fromMap(Map map)
      : this.name = map['name'],
        this.isDone = map['isDone'];

  Map toMap() {
    return {
      'name': this.name,
      'isDone': this.isDone,
    };
  }

  void doneBox() {
    isDone = !isDone;
  }
}

class Todo {
  String name;
  int dueDate;
  Todo({required this.name, required this.dueDate});

  @override
  String toString() {
    return this.name + " " + this.dueDate.toString() + ' days left';
  }
}

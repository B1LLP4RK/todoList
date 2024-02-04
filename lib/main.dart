import 'package:flutter/material.dart';
import 'todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Todo> todoList = [
    Todo(name: 'laundary', dueDate: 3),
    Todo(name: 'homework', dueDate: 4),
    Todo(name: 'call mom', dueDate: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
      ),
      title: 'todoList',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          title: Text('todoListApp'),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text(todoList[index].toString()));
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 10,
            );
          },
          itemCount: 3,
        ),
      ),
    );
  }
}

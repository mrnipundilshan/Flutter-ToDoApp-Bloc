import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/tasks/data/task_repository.dart';
import 'features/tasks/logic/task_bloc.dart';
import 'features/tasks/presentation/pages/task_list_page.dart';

void main() {
  final taskRepository = TaskRepository();
  runApp(BlocProvider(create: (_) => TaskBloc(taskRepository), child: MyApp()));
}

class MyApp extends StatelessWidget {
  final TaskRepository repository = TaskRepository();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: TaskListPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/tasks/data/task_repository.dart';
import 'features/tasks/logic/task_bloc.dart';
import 'features/tasks/logic/task_event.dart';
import 'features/tasks/presentation/pages/task_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TaskRepository repository = TaskRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      home: BlocProvider(
        create: (_) => TaskBloc(repository)..add(LoadTasks()),
        child: TaskListPage(),
      ),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'task_event.dart';
import 'task_state.dart';
import '../../tasks/data/task_respository.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskReposotory reposotory;

  TaskBloc(this.reposotory) : super(TaskInitial()) {
    on<LoadTasks>(onLoadTasks);
    on<AddTaskEvent>(_onAddTask);
    on<UpdateTaskEvent>(_onUpdateTask);
    on<DeleteTaskEvent>(_onDeleteTask);
  }
}

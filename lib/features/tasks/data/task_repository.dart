import '../../../core/database/app_databse.dart';
import '../../../core/database/task_model.dart';

class TaskRepository {
  Future<List<Task>> getTasks() async {
    final db = await AppDatabase.instance.database;
    final result = await db.query('tasks');
    return result.map((map) => Task.fromMap(map)).toList();
  }

  Future<void> addTask(Task task) async {
    final db = await AppDatabase.instance.database;
    await db.insert('tasks', task.toMap());
  }

  Future<void> updateTask(Task task) async {
    final db = await AppDatabase.instance.database;
    await db.update('tasks', task.toMap(), where: 'id=?', whereArgs: [task.id]);
  }

  Future<void> deleteTask(int id) async {
    final db = await AppDatabase.instance.database;
    await db.delete('tasks', where: 'id=?', whereArgs: [id]);
  }
}

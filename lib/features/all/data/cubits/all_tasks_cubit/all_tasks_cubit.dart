import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo/core/models/task_model.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_state.dart';

class AllTasksCubit extends Cubit<AllTasksState> {
  final Box<TaskModel> _taskBox = Hive.box<TaskModel>('task_box');

  AllTasksCubit() : super(const AllTasksState()) {
    loadTasks();
    // Optional: auto-refresh on Hive changes
    _taskBox.listenable().addListener(loadTasks);
  }

  void loadTasks() {
    emit(state.copyWith(status: AllTasksStatus.loading));
    try {
      final tasks = _taskBox.values.toList();
      emit(state.copyWith(status: AllTasksStatus.loaded, tasks: tasks));
    } catch (e) {
      emit(
        state.copyWith(
          status: AllTasksStatus.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void toggleTaskCompletion(int index) {
    final task = _taskBox.getAt(index);
    if (task != null) {
      task.isCompleted = !(task.isCompleted);
      task.save();

      final updatedTasks = List<TaskModel>.from(state.tasks);
      updatedTasks[index] = task;
      emit(state.copyWith(tasks: updatedTasks));
    }
  }

  List<TaskModel> getPendingTasks() =>
      state.tasks.where((task) => !task.isCompleted).toList();

  List<TaskModel> getCompletedTasks() =>
      state.tasks.where((task) => task.isCompleted).toList();

  void updateTask(int index, TaskModel updatedTask) {
    _taskBox.putAt(index, updatedTask);
    loadTasks();
  }

  void deleteTask(int index) {
    _taskBox.deleteAt(index);
    loadTasks();
  }
}

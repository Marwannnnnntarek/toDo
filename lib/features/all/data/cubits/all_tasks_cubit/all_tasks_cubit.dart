// tasks_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:todo/core/models/task_model.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_state.dart';

class AllTasksCubit extends Cubit<AllTasksState> {
  AllTasksCubit() : super(AllTasksInitial());

  void loadTasks() {
    final box = Hive.box<TaskModel>('task_box');
    final tasks = box.values.toList();
    emit(AllTasksLoaded(tasks: tasks));
  }

  void addTask(TaskModel taskModel) {
    final box = Hive.box<TaskModel>('task_box');
    box.add(taskModel);
    loadTasks();
  }
}

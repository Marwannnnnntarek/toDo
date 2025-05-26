import 'package:todo/core/models/task_model.dart';

abstract class AllTasksState {}

class AllTasksInitial extends AllTasksState {}

class AllTasksLoaded extends AllTasksState {
  final List<TaskModel> tasks;

  AllTasksLoaded({required this.tasks});
}

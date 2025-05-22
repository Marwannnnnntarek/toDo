import 'package:todo/core/models/task_model.dart';

abstract class AllTasksState {}
class AllTasksInitial extends AllTasksState {}
class AllTasksLoading extends AllTasksState {}
class AllTasksFailure extends AllTasksState {
    final String error;
  AllTasksFailure({required this.error});
}
class AllTasksSuccess extends AllTasksState {
  final List<TaskModel> taskModel;

  AllTasksSuccess( this.taskModel);
}
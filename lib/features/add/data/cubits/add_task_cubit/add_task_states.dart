// abstract class AddTaskState {}

// class AddTaskInitial extends AddTaskState {}

// class AddTaskLoading extends AddTaskState {}

// class AddTaskSuccess extends AddTaskState {}

// class AddTaskFailure extends AddTaskState {
//   final String error;
//   AddTaskFailure({required this.error});
// }

import 'package:todo/core/models/task_model.dart';

class AddTaskState {
  final String name;
  final String category;
  final String date;
  final String content;

  const AddTaskState({
    this.name = '',
    this.category = '',
    this.date = '',
    this.content = '',
  });

  AddTaskState copyWith({
    String? name,
    String? category,
    String? date,
    String? content,
  }) {
    return AddTaskState(
      name: name ?? this.name,
      category: category ?? this.category,
      date: date ?? this.date,
      content: content ?? this.content,
    );
  }
}

class AddTaskInitial extends AddTaskState {}

class AddTaskSuccess extends AddTaskState {
  final TaskModel taskModel;

  AddTaskSuccess({required this.taskModel});
}

class AddTaskError extends AddTaskState {
  final String message;
  AddTaskError(this.message);
}

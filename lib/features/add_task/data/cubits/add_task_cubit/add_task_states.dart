// import 'package:todo/core/models/task_model.dart';

// enum AddTaskStatus { initial, saving, success, error }

// class AddTaskState {
//   final String name;
//   final String category;
//   final String date;
//   final String content;
//   final AddTaskStatus status;
//   final String? message;
//   final TaskModel? taskModel;

//   const AddTaskState({
//     this.name = '',
//     this.category = '',
//     this.date = '',
//     this.content = '',
//     this.status = AddTaskStatus.initial,
//     this.message,
//     this.taskModel,
//   });

//   AddTaskState copyWith({
//     String? name,
//     String? category,
//     String? date,
//     String? content,
//     AddTaskStatus? status,
//     String? message,
//     TaskModel? taskModel,
//   }) {
//     return AddTaskState(
//       name: name ?? this.name,
//       category: category ?? this.category,
//       date: date ?? this.date,
//       content: content ?? this.content,
//       status: status ?? this.status,
//       message: message,
//       taskModel: taskModel ?? this.taskModel,
//     );
//   }
// }

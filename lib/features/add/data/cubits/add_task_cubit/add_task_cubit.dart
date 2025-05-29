import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo/core/models/task_model.dart';
import 'package:todo/features/add/data/cubits/add_task_cubit/add_task_states.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(const AddTaskState());

  void updateName(String name) => emit(state.copyWith(name: name));
  void updateCategory(String category) =>
      emit(state.copyWith(category: category));
  void updateDate(String date) => emit(state.copyWith(date: date));
  void updateContent(String content) => emit(state.copyWith(content: content));

  void saveTask(BuildContext context) async {
    if (state.name.isNotEmpty &&
        state.category.isNotEmpty &&
        state.date.isNotEmpty &&
        state.content.isNotEmpty) {
      emit(state.copyWith(status: AddTaskStatus.saving));

      final task = TaskModel(
        name: state.name,
        category: state.category,
        date: state.date,
        content: state.content,
      );

      final box = Hive.box<TaskModel>('task_box');
      await box.add(task);

      // ignore: use_build_context_synchronously
      context.read<AllTasksCubit>().loadTasks();

      emit(AddTaskState(status: AddTaskStatus.success, taskModel: task));

      // Reset state for next input
      await Future.delayed(const Duration(milliseconds: 500));
      emit(const AddTaskState());
    } else {
      emit(
        state.copyWith(
          status: AddTaskStatus.error,
          message: "Please fill all fields",
        ),
      );
    }
  }
}

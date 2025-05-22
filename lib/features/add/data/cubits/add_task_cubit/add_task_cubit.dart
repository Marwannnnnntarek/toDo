import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo/core/models/task_model.dart';
import 'package:todo/features/add/data/cubits/add_task_cubit/add_task_states.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());

  // ignore: non_constant_identifier_names
  AddTask(TaskModel taskModel) async {
    emit(AddTaskLoading());
    try {
      var taskBox = Hive.box<TaskModel>('task_box');
     
      await taskBox.add(taskModel);
       emit(AddTaskSuccess());
    } catch (e) {
      emit(AddTaskFailure(error: 'Error: $e'));
    }
  }
}

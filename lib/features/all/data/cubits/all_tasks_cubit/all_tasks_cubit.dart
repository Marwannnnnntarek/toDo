import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo/core/models/task_model.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_state.dart';

class AllTasksCubit extends Cubit<AllTasksState> {
  AllTasksCubit() : super(AllTasksInitial());
  

  // ignore: non_constant_identifier_names
  fetchAllTasks() async {
    emit(AllTasksLoading());
    try {
      var taskBox = Hive.box<TaskModel>('task_box');
     
     
     List<TaskModel> taskModel =  taskBox.values.toList();
       emit(AllTasksSuccess(taskModel));
    } catch (e) {
      emit(AllTasksFailure(error: 'Error: $e'));
    }
  }
  
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:todo/features/add/data/cubits/add_task_cubit/add_task_cubit.dart';
import 'package:todo/features/add/data/cubits/add_task_cubit/add_task_states.dart';
import 'package:todo/features/add/presentation/views/widgets/add_task_form.dart';

class AddTasksBody extends StatelessWidget {
  const AddTasksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTaskCubit(),
      child: BlocConsumer<AddTaskCubit, AddTaskState>(
        listener: (BuildContext context, Object? state) {
          if (state is AddTaskSuccess) {
            context.go('/');
          }
        },
        builder: (BuildContext context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddTaskLoading ? true : false,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: AddTaskForm(),
            ),
          );
        },
      ),
    );
  }
}

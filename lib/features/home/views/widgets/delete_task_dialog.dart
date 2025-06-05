import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/features/home/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';

class DeleteTaskDialog extends StatelessWidget {
  final int taskIndex;

  const DeleteTaskDialog({super.key, required this.taskIndex});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Delete Task'),
      content: const Text('Are you sure you want to delete this task?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            context.read<AllTasksCubit>().deleteTask(taskIndex);
            context.pop();
          },
          child: const Text('Delete', style: TextStyle(color: Colors.red)),
        ),
      ],
    );
  }
}

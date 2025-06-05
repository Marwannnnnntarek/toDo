import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/core/models/task_model.dart';
import 'package:todo/features/home/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';

class EditTaskDialog extends StatelessWidget {
  final TaskModel task;
  final int taskIndex;

  const EditTaskDialog({
    super.key,
    required this.task,
    required this.taskIndex,
  });

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: task.name);
    final contentController = TextEditingController(text: task.content);
    final dateController = TextEditingController(text: task.date);

    return AlertDialog(
      title: const Text('Edit Task'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'Task Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: contentController,
            decoration: const InputDecoration(
              labelText: 'Task Content',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: dateController,
            decoration: const InputDecoration(
              labelText: 'Date',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => context.pop(), child: const Text('Cancel')),
        TextButton(
          onPressed: () {
            final updatedTask = TaskModel(
              name: nameController.text,
              category: task.category,
              date: dateController.text,
              content: contentController.text,
              isCompleted: task.isCompleted,
            );
            context.read<AllTasksCubit>().updateTask(taskIndex, updatedTask);
            Navigator.pop(context);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

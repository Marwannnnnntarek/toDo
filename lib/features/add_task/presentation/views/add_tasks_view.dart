import 'package:flutter/material.dart';
import 'package:todo/features/add_task/presentation/views/widgets/add_tasks_body.dart';

class AddTasksView extends StatelessWidget {
  const AddTasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: AddTasksBody()));
  }
}

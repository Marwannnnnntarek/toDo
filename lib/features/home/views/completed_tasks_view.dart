import 'package:flutter/material.dart';
import 'package:todo/features/home/views/widgets/completed_tasks_body.dart';

class CompletedTasksView extends StatefulWidget {
  const CompletedTasksView({super.key});

  @override
  State<CompletedTasksView> createState() => _CompletedTasksViewState();
}

class _CompletedTasksViewState extends State<CompletedTasksView> {
  List<bool?> taskValues = List.filled(
    5,
    false,
  ); // Make sure the list is initialized properly

  void updateTaskValue(int index, bool? newValue) {
    setState(() {
      taskValues[index] =
          newValue ?? false; // Ensure null value is converted to false
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CompletedTasksBody(
          // values: taskValues,
          // onChanged: updateTaskValue,
        ),
      ),
    );
  }
}

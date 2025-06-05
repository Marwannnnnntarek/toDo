import 'package:flutter/material.dart';
import 'package:todo/features/home/views/widgets/all_tasks_body.dart';

class AllTasksView extends StatefulWidget {
  const AllTasksView({super.key});

  @override
  State<AllTasksView> createState() => _AllTasksViewState();
}

class _AllTasksViewState extends State<AllTasksView> {
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
    return SafeArea(child: Scaffold(body: AllTasksBody()));
  }
}

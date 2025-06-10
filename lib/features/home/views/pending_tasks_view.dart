// import 'package:flutter/material.dart';
// import 'package:todo/features/home/views/widgets/pending_tasks_body.dart';

// class PendingTasksView extends StatefulWidget {
//   const PendingTasksView({super.key});

//   @override
//   State<PendingTasksView> createState() => _PendingTasksViewState();
// }

// class _PendingTasksViewState extends State<PendingTasksView> {
//   List<bool?> taskValues = List.filled(
//     5,
//     false,
//   ); // Make sure the list is initialized properly

//   void updateTaskValue(int index, bool? newValue) {
//     setState(() {
//       taskValues[index] =
//           newValue ?? false; // Ensure null value is converted to false
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(body: PendingTasksBody()));
//   }
// }

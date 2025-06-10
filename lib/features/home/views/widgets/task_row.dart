// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:hive/hive.dart';
// import 'package:todo/core/models/task_model.dart';
// import 'package:todo/features/home/views/widgets/delete_task_dialog.dart';
// import 'package:todo/features/home/views/widgets/edit_task_dialog.dart';
// import 'package:todo/features/home/views/widgets/slidable_action_button.dart';
// import 'package:todo/features/home/views/widgets/task_content_card.dart';

// class TaskRow extends StatelessWidget {
//   const TaskRow({super.key, required this.taskIndex, this.value});

//   final bool? value;
//   final int taskIndex;

//   @override
//   Widget build(BuildContext context) {
//     final task = Hive.box<TaskModel>('task_box').getAt(taskIndex);
//     if (task == null) return const SizedBox();

//     return SlidableAutoCloseBehavior(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
//         child: Slidable(
//           // key: Key(task.key.toString()),
//           endActionPane: ActionPane(
//             motion: const DrawerMotion(),
//             extentRatio: 0.5,
//             children: [
//               SlidableActionButton(
//                 color: const Color(0xff008080),
//                 icon: Icons.edit,
//                 label: 'Edit',
//                 onTap: () {
//                   HapticFeedback.lightImpact();
//                   showDialog(
//                     context: context,
//                     builder:
//                         (_) =>
//                         EditTaskDialog(task: task, taskIndex: taskIndex),
//                   );
//                 },
//               ),
//               SlidableActionButton(
//                 color: const Color(0xffFF6F61),
//                 icon: Icons.delete,
//                 label: 'Del',
//                 onTap: () {
//                   HapticFeedback.heavyImpact();
//                   showDialog(
//                     context: context,
//                     builder: (_) => DeleteTaskDialog(taskIndex: taskIndex),
//                   );
//                 },
//               ),
//             ],
//           ),
//           child: TaskContentCard(task: task, taskIndex: taskIndex),
//         ),
//       ),
//     );
//   }
// }

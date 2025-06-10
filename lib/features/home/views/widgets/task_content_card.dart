// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:todo/core/models/task_model.dart';
// import 'package:todo/features/home/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';

// class TaskContentCard extends StatelessWidget {
//   const TaskContentCard({
//     super.key,
//     required this.task,
//     required this.taskIndex,
//   });

//   final TaskModel task;
//   final int taskIndex;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 2,
//             offset: const Offset(0, 1),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
//         child: Row(
//           children: [
//             Checkbox(
//               value: task.isCompleted,
//               onChanged: (_) {
//                 context.read<AllTasksCubit>().toggleTaskCompletion(taskIndex);
//               },
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(6),
//               ),
//               side: const BorderSide(color: Color(0xffE8E8E8), width: 2),
//               checkColor: Colors.white,
//               activeColor: const Color(0xff008080),
//             ),
//             const SizedBox(width: 4),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Task name
//                   Text(
//                     task.name,
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: const Color(0xff2D2D2D),
//                       decoration:
//                           task.isCompleted
//                               ? TextDecoration.lineThrough
//                               : TextDecoration.none,
//                     ),
//                   ),
//                   const SizedBox(height: 4),

//                   // Task content (description)
//                   Text(
//                     task.content,
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: const Color(0xff737373),
//                       fontWeight: FontWeight.w500,
//                       decoration:
//                           task.isCompleted
//                               ? TextDecoration.lineThrough
//                               : TextDecoration.none,
//                     ),
//                   ),
//                   const SizedBox(height: 6),

//                   // Category and Date
//                   Row(
//                     children: [
//                       Icon(Icons.label, color: Colors.grey[400], size: 14),
//                       const SizedBox(width: 4),
//                       Text(
//                         task.category,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.grey[600],
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       Icon(
//                         Icons.calendar_today,
//                         color: Colors.grey[400],
//                         size: 14,
//                       ),
//                       const SizedBox(width: 4),
//                       Text(
//                         task.date,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.grey[600],
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

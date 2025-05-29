// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:todo/core/models/task_model.dart';
// import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';

// class TaskContent extends StatelessWidget {
//   final TaskModel task;
//   final int taskIndex;

//   const TaskContent({super.key, required this.task, required this.taskIndex});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     task.content,
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                       color: const Color(0xff737373),
//                       decoration:
//                           task.isCompleted
//                               ? TextDecoration.lineThrough
//                               : TextDecoration.none,
//                     ),
//                   ),
//                   Text(
//                     task.date,
//                     style: TextStyle(
//                       color: const Color(0xffA3A3A3),
//                       fontSize: 13,
//                       fontWeight: FontWeight.w500,
//                       decoration:
//                           task.isCompleted
//                               ? TextDecoration.lineThrough
//                               : TextDecoration.none,
//                     ),
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

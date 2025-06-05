import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/home/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';
import 'package:todo/features/home/data/cubits/all_tasks_cubit/all_tasks_state.dart';

import 'package:todo/features/home/views/widgets/task_row.dart';
import 'package:todo/features/home/views/widgets/header3.dart';

class PendingTasksBody extends StatelessWidget {
  const PendingTasksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header3(
          title: 'Pending',

          icon: Icon(Icons.timer_outlined, color: Colors.white),
          color: Color(0xffFF6F61),
        ),
        const SizedBox(height: 97),
        Expanded(
          child: BlocBuilder<AllTasksCubit, AllTasksState>(
            builder: (context, state) {
              if (state.status == AllTasksStatus.loaded) {
                final pendingTasks =
                    context.read<AllTasksCubit>().getPendingTasks();
                if (pendingTasks.isEmpty) {
                  return const Center(
                    child: Text(
                      'No pending tasks',
                      style: TextStyle(fontSize: 16, color: Color(0xff737373)),
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: pendingTasks.length,
                  itemBuilder: (context, index) {
                    final task = pendingTasks[index];
                    return TaskRow(
                      value: task.isCompleted,
                      taskIndex: state.tasks.indexOf(task),
                    );
                  },
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}

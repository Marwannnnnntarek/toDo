import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_state.dart';
import 'package:todo/features/all/presentation/views/widgets/task_row.dart';
import 'package:todo/features/completed/presentation/views/widgets/header3.dart';

class CompletedTasksBody extends StatelessWidget {
  const CompletedTasksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header3(
          title: 'Completed',

          icon: Icon(Icons.done, color: Colors.white),
          color: Color(0xff008080),
        ),
        const SizedBox(height: 97),
        Expanded(
          child: BlocBuilder<AllTasksCubit, AllTasksState>(
            builder: (context, state) {
              if (state.status == AllTasksStatus.loaded) {
                final completedTasks =
                    context.read<AllTasksCubit>().getCompletedTasks();
                if (completedTasks.isEmpty) {
                  return const Center(
                    child: Text(
                      'No completed tasks',
                      style: TextStyle(fontSize: 16, color: Color(0xff737373)),
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: completedTasks.length,
                  itemBuilder: (context, index) {
                    final task = completedTasks[index];
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_state.dart';
import 'package:todo/features/all/presentation/views/widgets/header.dart';
import 'package:todo/features/all/presentation/views/widgets/task_row.dart';

class AllTasksBody extends StatelessWidget {
  const AllTasksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header(
          title: 'Tasks',

          icon: Icon(Icons.add_circle),
          color: Colors.white,
        ),
        const SizedBox(height: 97),
        Expanded(
          child: BlocBuilder<AllTasksCubit, AllTasksState>(
            builder: (context, state) {
              if (state.status == AllTasksStatus.loaded) {
                if (state.tasks.isEmpty) {
                  return const Center(
                    child: Text(
                      'No tasks yet',
                      style: TextStyle(fontSize: 16, color: Color(0xff737373)),
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: state.tasks.length,
                  itemBuilder: (context, index) {
                    final task = state.tasks[index];
                    return TaskRow(value: task.isCompleted, taskIndex: index);
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

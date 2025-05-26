import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_state.dart';
import 'package:todo/features/all/presentation/views/widgets/header.dart';
import 'package:todo/features/all/presentation/views/widgets/task_row.dart';

class PendingTasksBody extends StatelessWidget {
  const PendingTasksBody({
    super.key,
    required this.values,
    required this.onChanged,
  });

  final List<bool?> values;
  final Function(int index, bool? newValue) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header(
          title: 'Pending',
          date: '15 june',
          icon: Icon(Icons.timer_outlined, color: Colors.white),
          color: Color(0xffFF6F61),
        ),
        SizedBox(height: 97),
        Expanded(
          child: BlocBuilder<AllTasksCubit, AllTasksState>(
            builder: (context, state) {
              if (state is AllTasksLoaded) {
                return ListView.builder(
                  itemCount: state.tasks.length,
                  itemBuilder: (context, index) {
                    final task = state.tasks[index];
                    return TaskRow(
                      value: false,
                      onChanged: (_) {},
                      content: task.content,
                      date: task.date.toString(), // Format this if needed
                    );
                  },
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ],
    );
  }
}

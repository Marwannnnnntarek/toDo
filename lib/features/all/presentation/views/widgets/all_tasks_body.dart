import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/all/data/cubits/all_tasks_cubit/all_tasks_cubit.dart';
import 'package:todo/features/all/presentation/views/widgets/header.dart';
import 'package:todo/features/all/presentation/views/widgets/task_row.dart';

class AllTasksBody extends StatelessWidget {
  const AllTasksBody({
    super.key,
    required this.values,
    required this.onChanged,
  });

  final List<bool?> values;
  final Function(int index, bool? newValue) onChanged;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllTasksCubit(),
      child: Column(
        children: [
          const Header(
            title: 'Tasks',
            date: '15 october',
            icon: Icon(Icons.add_circle),
            color: Colors.white,
          ),
          SizedBox(height: 97),
          Expanded(
            child: ListView.builder(
              itemCount: values.length,
              itemBuilder: (context, index) {
                return TaskRow(
                  value: values[index],
                  onChanged: (newValue) => onChanged(index, newValue),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

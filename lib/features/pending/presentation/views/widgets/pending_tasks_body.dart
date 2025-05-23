import 'package:flutter/material.dart';
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
    );
  }
}

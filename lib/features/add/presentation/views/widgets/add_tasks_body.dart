import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/features/add/data/cubits/add_task_cubit/add_task_cubit.dart';
import 'package:todo/features/add/data/cubits/add_task_cubit/add_task_states.dart';
import 'package:todo/features/add/presentation/views/widgets/cancel_button.dart';
import 'package:todo/features/add/presentation/views/widgets/category_dropdown.dart';
import 'package:todo/features/add/presentation/views/widgets/custom_text_field.dart';
import 'package:todo/features/add/presentation/views/widgets/date_field.dart';
import 'package:todo/features/add/presentation/views/widgets/save_button.dart';
import 'package:todo/features/add/presentation/views/widgets/title.dart';

class AddTasksBody extends StatelessWidget {
  final _nameController = TextEditingController();
  final _categoryController = TextEditingController();
  final _contentController = TextEditingController();
  final _dateController = TextEditingController();
  AddTasksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddTaskCubit, AddTaskState>(
      listener: (context, state) {
        if (state.status == AddTaskStatus.success) {
          // Save task and maybe pop the screen
          context.go('/');
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Task added successfully!')));
        } else if (state.status == AddTaskStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message ?? 'Something went wrong')),
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state.status == AddTaskStatus.saving)
                const LinearProgressIndicator(),
              CancelButton(context: context),
              const SizedBox(height: 39),
              const AddTitle(),
              const SizedBox(height: 91),
              CustomTextField(
                hint: 'Name your task',
                controller: _nameController,
                onChanged:
                    (value) => context.read<AddTaskCubit>().updateName(value),
              ),
              const SizedBox(height: 48),
              CategoryDropdown(
                controller: _categoryController,
                onChanged:
                    (value) =>
                        context.read<AddTaskCubit>().updateCategory(value),
              ),
              const SizedBox(height: 48),
              DateField(
                controller: _dateController,
                onChanged:
                    (value) => context.read<AddTaskCubit>().updateDate(value),
              ),
              const SizedBox(height: 48),
              CustomTextField(
                hint: 'Add your task',
                controller: _contentController,
                onChanged:
                    (value) =>
                        context.read<AddTaskCubit>().updateContent(value),
              ),
              const Spacer(),
              SaveButton(
                onPressed: () {
                  context.read<AddTaskCubit>().saveTask(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo/features/add/presentation/views/widgets/cancel_button.dart';
import 'package:todo/features/add/presentation/views/widgets/category_dropdown.dart';
import 'package:todo/features/add/presentation/views/widgets/custom_text_field.dart';
import 'package:todo/features/add/presentation/views/widgets/date_field.dart';
import 'package:todo/features/add/presentation/views/widgets/save_button.dart';
import 'package:todo/features/add/presentation/views/widgets/title.dart';

class AddTasksBody extends StatelessWidget {
  const AddTasksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CancelButton(context: context),
          const SizedBox(height: 39),
          const AddTitle(),
          const SizedBox(height: 91),
          const CustomTextField(hint: 'Name your task'),
          const SizedBox(height: 48),
          const CategoryDropdown(),
          const SizedBox(height: 48),
          const DateField(),
          const Spacer(),
          const SaveButton(),
        ],
      ),
    );
  }
}

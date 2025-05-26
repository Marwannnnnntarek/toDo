// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:todo/core/models/task_model.dart';
// import 'package:todo/features/add/data/cubits/add_task_cubit/add_task_cubit.dart';
// import 'package:todo/features/add/presentation/views/widgets/cancel_button.dart';
// import 'package:todo/features/add/presentation/views/widgets/category_dropdown.dart';
// import 'package:todo/features/add/presentation/views/widgets/custom_text_field.dart';
// import 'package:todo/features/add/presentation/views/widgets/date_field.dart';
// import 'package:todo/features/add/presentation/views/widgets/save_button.dart';
// import 'package:todo/features/add/presentation/views/widgets/title.dart';

// class AddTaskForm extends StatefulWidget {
//   const AddTaskForm({super.key});

//   @override
//   State<AddTaskForm> createState() => _AddTaskFormState();
// }

// class _AddTaskFormState extends State<AddTaskForm> {
//   final GlobalKey<FormState> formkey = GlobalKey();
//   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
//   String? name, content, date, category;
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formkey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CancelButton(context: context),
//           const SizedBox(height: 39),
//           const AddTitle(),
//           const SizedBox(height: 91),
//           CustomTextField(
//             hint: 'Name your task',
//             onSaved: (value) {
//               name = value;
//             },
//           ),
//           const SizedBox(height: 48),
//           CategoryDropdown(
//             onSaved: (value) {
//               category = value;
//             },
//           ),
//           const SizedBox(height: 48),
//           DateField(
//             onSaved: (value) {
//               date = value;
//             },
//           ),
//           const SizedBox(height: 48),
//           CustomTextField(
//             hint: 'Add your task',
//             onSaved: (value) {
//               content = value;
//             },
//           ),
//           const Spacer(),
//           SaveButton(
//             onPressed: () {
//               if (formkey.currentState!.validate()) {
//                 formkey.currentState!.save();
//                 BlocProvider.of<AddTaskCubit>(context).AddTask(
//                   TaskModel(
//                     name: name!,
//                     content: content!,
//                     date: date!,
//                     category: category!,
//                   ),
//                 );
//               } else {
//                 setState(() {
//                   autovalidateMode = AutovalidateMode.always;
//                 });
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

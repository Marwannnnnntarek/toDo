import 'package:flutter/material.dart';

class TaskActions extends StatelessWidget {
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const TaskActions({super.key, required this.onEdit, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.red.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              IconButton(
                icon: const Icon(Icons.edit, color: Color(0xff008080)),
                onPressed: onEdit,
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Color(0xffFF6F61)),
                onPressed: onDelete,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

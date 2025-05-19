import 'package:flutter/material.dart';

class TaskRow extends StatelessWidget {
  const TaskRow({super.key, required this.value, required this.onChanged});

  final bool? value;
  final Function(bool? p1) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 34),
      child: Row(
        children: [
          Checkbox(
            tristate: true,
            value: value ?? false, // Safe fallback in case value is null
            onChanged: onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            side: const BorderSide(color: Color(0xffE8E8E8), width: 2),
            checkColor: Colors.white,
            activeColor: const Color(0xff008080),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff737373),
                    decoration:
                        value == true
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                  ),
                ),
                Text(
                  '12:42 PM',
                  style: TextStyle(
                    color: Color(0xffA3A3A3),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    decoration:
                        value == true
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

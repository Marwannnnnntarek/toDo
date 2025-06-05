import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Category {
  personal(icon: Icons.person, color: Color(0xff008080)),
  work(icon: Icons.work, color: Color(0xff1D92FF)),
  health(icon: Icons.health_and_safety, color: Color(0xffFF6767)),
  family(icon: Icons.family_restroom, color: Color(0xff33363F)),
  learning(icon: Icons.school, color: Color(0xffFFA500));

  final IconData icon;
  final Color color;

  const Category({required this.icon, required this.color});
}

class CategoryDropdown extends StatefulWidget {
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  const CategoryDropdown({super.key, this.onChanged, this.controller});

  @override
  State<CategoryDropdown> createState() => _CategoryDropdownState();
}

class _CategoryDropdownState extends State<CategoryDropdown> {
  final TextEditingController controller = TextEditingController();
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 241,

        child: DropdownButton<String>(
          value: selectedCategory,
          elevation: 0,
          isExpanded: true,

          hint: const SizedBox.shrink(),
          items:
              Category.values.map((category) {
                return DropdownMenuItem<String>(
                  value: category.name,
                  child: Row(
                    children: [
                      Icon(category.icon, size: 18, color: category.color),
                      const SizedBox(width: 8),
                      Text(
                        category.name,
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: category.color,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedCategory = newValue;
              controller.text = newValue ?? '';
            });
            if (newValue != null) {
              widget.onChanged?.call(newValue);
            }
          },
        ),
      ),
    );
  }
}

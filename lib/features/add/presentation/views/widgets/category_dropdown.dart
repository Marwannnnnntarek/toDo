import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryDropdown extends StatefulWidget {
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  const CategoryDropdown({super.key, this.onSaved, this.onChanged});

  @override
  State<CategoryDropdown> createState() => _CategoryDropdownState();
}

class _CategoryDropdownState extends State<CategoryDropdown> {
  final TextEditingController _controller = TextEditingController();
  String? selectedCategory;

  final List<String> categories = [
    'Personal',
    'Work',
    'Health',
    'Family',
    'Learning',
  ];

  final Map<String, IconData> categoryIcons = {
    'Personal': Icons.person,
    'Work': Icons.work,
    'Health': Icons.health_and_safety,
    'Family': Icons.family_restroom,
    'Learning': Icons.school,
  };

  final Map<String, Color> categoryColors = {
    'Personal': Color(0xff008080),
    'Work': Color(0xff1D92FF),
    'Health': Color(0xffFF6767),
    'Family': Color(0xff33363F),
    'Learning': Color(0xffFFA500),
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 241,
        height: 31,
        child: TextFormField(
          onSaved: widget.onSaved,
          onChanged: widget.onChanged,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'This field is required';
            } else {
              return null;
            }
          },
          controller: _controller,
          readOnly: true,
          decoration: InputDecoration(
            hintText: 'Choose a category',
            hintStyle: GoogleFonts.roboto(
              color: Colors.grey,
              fontSize: 12.89,
              fontWeight: FontWeight.normal,
            ),
            border: const UnderlineInputBorder(),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 0.38),
            ),
            contentPadding: const EdgeInsets.only(bottom: 18),
            suffixIcon: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xff222222),
                ),
                value: selectedCategory,
                dropdownColor: Colors.white,
                elevation: 0,
                hint: const SizedBox.shrink(),
                items:
                    categories.map((String category) {
                      final icon = categoryIcons[category] ?? Icons.category;
                      final color = categoryColors[category] ?? Colors.white;
                      return DropdownMenuItem<String>(
                        value: category,
                        child: Row(
                          children: [
                            Icon(icon, size: 18, color: color),
                            const SizedBox(width: 8),
                            Text(
                              category,
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: color,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    // selectedCategory = newValue;
                    _controller.text = newValue ?? '';
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

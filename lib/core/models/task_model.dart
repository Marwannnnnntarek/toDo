import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  String category;

  @HiveField(2)
  String date;

  @HiveField(3)
  String content;

  @HiveField(4)
  bool isCompleted;

  TaskModel({
    required this.name,
    required this.category,
    required this.date,
    required this.content,
    this.isCompleted = false,
  }) {
    _validateFields();
  }

  void _validateFields() {
    if (name.trim().isEmpty) {
      throw ArgumentError('Task name cannot be empty');
    }
    if (category.trim().isEmpty) {
      throw ArgumentError('Category cannot be empty');
    }
    if (date.trim().isEmpty) {
      throw ArgumentError('Date cannot be empty');
    }
  }

  TaskModel copyWith({
    String? name,
    String? category,
    String? date,
    String? content,
    bool? isCompleted,
  }) {
    return TaskModel(
      name: name ?? this.name,
      category: category ?? this.category,
      date: date ?? this.date,
      content: content ?? this.content,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'category': category,
      'date': date,
      'content': content,
      'isCompleted': isCompleted,
    };
  }

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      name: json['name'] as String,
      category: json['category'] as String,
      date: json['date'] as String,
      content: json['content'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );
  }

  @override
  String toString() {
    return 'TaskModel(name: $name, category: $category, date: $date, isCompleted: $isCompleted)';
  }
}

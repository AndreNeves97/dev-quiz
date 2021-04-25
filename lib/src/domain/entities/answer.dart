import 'dart:convert';

class Answer {
  final String title;
  final bool isRight;

  Answer({
    required this.title,
    this.isRight = false,
  });

  factory Answer.fromMap(Map<String, dynamic> map) {
    return Answer(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  factory Answer.fromJson(String source) => Answer.fromMap(json.decode(source));
}

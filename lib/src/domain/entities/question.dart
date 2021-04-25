import 'dart:convert';

import 'answer.dart';

class Question {
  final String title;
  final List<Answer> answers;

  Question({
    required this.title,
    required this.answers,
  });

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      title: map['title'],
      answers: List<Answer>.from(
        map['answers'].map((answer) => Answer.fromMap(answer)),
      ),
    );
  }

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source));
}

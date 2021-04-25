import 'dart:convert';

import 'level.dart';
import 'question.dart';
import 'question_answer.dart';

class Quiz {
  final String title;
  final List<Question> questions;
  final List<QuestionAnswer> questionsAnswers;
  final Level level;
  final String assetImage;

  Quiz({
    required this.title,
    required this.questions,
    required this.questionsAnswers,
    required this.level,
    required this.assetImage,
  });

  factory Quiz.fromMap(Map<String, dynamic> map) {
    final questions = List<Question>.from(
      map['questions'].map(
        (question) => Question.fromMap(question),
      ),
    );

    return Quiz(
      title: map['title'],
      assetImage: map['assetImage'],
      level: parseLevel(map['level']),
      questions: questions,
      questionsAnswers: List<QuestionAnswer>.from(
        map['questionsAnswers'].map(
          (questionAnswer) => QuestionAnswer.fromMap(questionAnswer, questions),
        ),
      ),
    );
  }

  factory Quiz.fromJson(String source) => Quiz.fromMap(json.decode(source));

  static List<Quiz> listFromJson(String source) {
    final list = json.decode(source) as List;
    return list.map((quiz) => Quiz.fromMap(quiz)).toList();
  }
}

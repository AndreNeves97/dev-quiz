import 'dart:convert';

import 'answer.dart';
import 'question.dart';

class QuestionAnswer {
  final Question question;
  final Answer answer;

  QuestionAnswer({
    required this.question,
    required this.answer,
  }) : assert(
          question.answers.contains(answer),
        );

  factory QuestionAnswer.fromMap(
      Map<String, dynamic> map, List<Question> questions) {
    final questionIndex = map['question']['index'];
    final answerIndex = map['answer']['index'];

    final question = questions[questionIndex];

    return QuestionAnswer(
      question: questions[questionIndex],
      answer: question.answers[answerIndex],
    );
  }

  factory QuestionAnswer.fromJson(String source, List<Question> questions) =>
      QuestionAnswer.fromMap(json.decode(source), questions);
}

import 'answer.dart';
import 'question.dart';

class QuestionAnswer {
  final Question question;
  final Answer answer;

  QuestionAnswer({
    required this.question,
    required this.answer,
  });

  // : assert(
  //         question.answers.contains(answer),
  //       );
}

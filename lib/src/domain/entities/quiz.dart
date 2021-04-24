import 'level.dart';
import 'question.dart';
import 'question_answer.dart';

class Quiz {
  final String title;
  final List<Question> questions;
  final List<QuestionAnswer> questionsAnswers;
  final Level level;
  final String assetImage;
  // final

  Quiz({
    required this.title,
    required this.questions,
    required this.questionsAnswers,
    required this.level,
    required this.assetImage,
  });
}

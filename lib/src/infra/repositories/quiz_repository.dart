import 'package:flutter/services.dart';

import '../../domain/entities/quiz.dart';

class QuizRepository {
  Future<List<Quiz>> getQuizzes() async {
    await Future.delayed(Duration(seconds: 1));

    final response = await rootBundle
        .loadString("./lib/src/external/datasources/quizzes.json");

    return Quiz.listFromJson(response);
  }
}

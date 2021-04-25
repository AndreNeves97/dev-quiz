import 'package:dev_quiz/src/infra/repositories/quiz_repository.dart';
import 'package:dev_quiz/src/infra/repositories/user_repository.dart';
import 'package:flutter/foundation.dart';

import '../../../core/core.dart';
import '../../domain/entities/answer.dart';
import '../../domain/entities/level.dart';
import '../../domain/entities/question.dart';
import '../../domain/entities/question_answer.dart';
import '../../domain/entities/quiz.dart';
import '../../domain/entities/user.dart';
import 'home_state.dart';

class HomeController {
  final ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  final userRepository = UserRepository();
  final quizRepository = QuizRepository();

  User? user;

  List<Quiz>? quizzes;

  Future<void> getUser() async {
    state = HomeState.loading;
    user = await userRepository.getUser();
    state = HomeState.sucess;
  }

  Future<void> getQuizzes() async {
    state = HomeState.loading;
    quizzes = await quizRepository.getQuizzes();
    state = HomeState.sucess;
  }
}

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

  User? user;

  List<Quiz>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = User(
      name: 'André Neves',
      photoUrl: AppImages.user,
      score: 0,
    );

    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      Quiz(
        title: 'Introdução ao Flutter',
        questions: [
          Question(
            title: 'O que o Flutter faz em sua totalidade?',
            answers: [
              Answer(
                title: 'Kit de desenvolvimento de interface de usuário',
              ),
              Answer(
                title:
                    'Possibilita a criação de aplicativos compilados nativamente',
                isRight: true,
              ),
              Answer(title: 'Acho que é uma marca de café do Himalaia'),
              Answer(
                  title:
                      'Possibilita a criação de desktops que são muito incríveis'),
            ],
          ),
          Question(
            title: 'O que o Flutter faz em sua totalidade?',
            answers: [
              Answer(
                title: 'Kit de desenvolvimento de interface de usuário',
              ),
              Answer(
                title:
                    'Possibilita a criação de aplicativos compilados nativamente',
                isRight: true,
              ),
              Answer(title: 'Acho que é uma marca de café do Himalaia'),
              Answer(
                  title:
                      'Possibilita a criação de desktops que são muito incríveis'),
            ],
          ),
          Question(
            title: 'O que o Flutter faz em sua totalidade?',
            answers: [
              Answer(
                title: 'Kit de desenvolvimento de interface de usuário',
              ),
              Answer(
                title:
                    'Possibilita a criação de aplicativos compilados nativamente',
                isRight: true,
              ),
              Answer(title: 'Acho que é uma marca de café do Himalaia'),
              Answer(
                  title:
                      'Possibilita a criação de desktops que são muito incríveis'),
            ],
          )
        ],
        questionsAnswers: [
          QuestionAnswer(
            question: Question(
              title: 'O que o Flutter faz em sua totalidade?',
              answers: [
                Answer(
                  title: 'Kit de desenvolvimento de interface de usuário',
                ),
                Answer(
                  title:
                      'Possibilita a criação de aplicativos compilados nativamente',
                  isRight: true,
                ),
                Answer(title: 'Acho que é uma marca de café do Himalaia'),
                Answer(
                    title:
                        'Possibilita a criação de desktops que são muito incríveis'),
              ],
            ),
            answer: Answer(
              title: 'Kit de desenvolvimento de interface de usuário',
            ),
          ),
        ],
        level: Level.facil,
        assetImage: '',
      )
    ];

    state = HomeState.sucess;
  }
}

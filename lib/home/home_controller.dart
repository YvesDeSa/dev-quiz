import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/awnser_model.dart';
import 'package:dev_quiz/shared/models/questions_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier(HomeState.empty);

  HomeState get state => stateNotifier.value;
  set state(HomeState state) => stateNotifier.value = state;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
        name: "Yves",
        photoUrl: "https://avatars.githubusercontent.com/u/70417517?v=4");

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        image: AppImages.blocks,
        level: Level.easy,
        title: "NlW 5 Flutter",
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter",
            awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando Flutter"),
              AwnserModel(title: "Muito topo"),
              AwnserModel(title: "Show de bola", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter",
            awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando Flutter"),
              AwnserModel(title: "Muito topo"),
              AwnserModel(title: "Show de bola", isRight: true),
            ],
          )
        ],
      )
    ];
    state = HomeState.success;
  }
}

import 'package:dev_quiz/shared/models/questions_model.dart';

enum Level { easy, medium, difficult, expert }

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAwnserd;
  final String image;
  final Level level;

  QuizModel(
      {required this.title,
      required this.questions,
      this.questionAwnserd = 0,
      required this.image,
      required this.level});
}

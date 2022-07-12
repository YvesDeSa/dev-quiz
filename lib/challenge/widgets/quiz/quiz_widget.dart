import 'package:dev_quiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/cupertino.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading20,
          ),
          SizedBox(
            height: 24,
          ),
          AwnserWidget(
              title:
                  "Possibilita a criação de aplicativos compilados nativamente",
              isRight: true,
              isSelected: true),
          AwnserWidget(
              title:
                  "Possibilita a criação de aplicativos compilados nativamente",
              isRight: true,
              isSelected: false),
          AwnserWidget(
              title:
                  "Possibilita a criação de aplicativos compilados nativamente",
              isRight: false,
              isSelected: true)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/models/answer_button.dart';
import 'package:flutter_quiz_application/models/styled_text.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['choosen_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionText(
                  itemData['question'] as String,
                ),
                const SizedBox(
                  height: 5,
                ),
                AnsweredText(
                  itemData['choosen_answer'] as String,
                ),
                CorrectText(
                  itemData['correct_answer'] as String,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

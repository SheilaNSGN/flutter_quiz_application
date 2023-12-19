// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/data/questions.dart';
import 'package:flutter_quiz_application/models/styled_text.dart';
import 'package:flutter_quiz_application/questions_folder/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswer,
    required this.onRestart,
    required this.onMainHome,
  });

  final void Function() onRestart;
  final void Function() onMainHome;
  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'choosen_answer': chosenAnswer[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestionanswered = questions.length;
    final totalCorrectAnswer = summaryData.where(
      (data) {
        return data['user_answer'] == data['correct_answer'];
      },
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(
              'You have answered $totalQuestionanswered out of $totalCorrectAnswer questions correctly!',
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 65, 147, 255),
                  foregroundColor: Colors.white),
              icon: const Icon(Icons.replay_outlined),
              label: const Text('Restart Quiz'),
            ),
            ElevatedButton.icon(
              onPressed: onMainHome,
              style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 65, 147, 255),
                  foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text('Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

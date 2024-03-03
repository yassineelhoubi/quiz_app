import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/text_title.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: data["correct_answer"] == data["user_answer"]
                      ? Colors.blue
                      : Colors.purple.shade200,
                  radius: 20.0,
                  child: Text(
                    ((data["index"] as int) + 1).toString(),
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextTitle(data["question"] as String,
                          fontSize: 16, color: Colors.white),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data["correct_answer"] as String,
                        style: TextStyle(
                          color: Colors.purple.shade200,
                        ),
                      ),
                      Text(
                        data["user_answer"] as String,
                        style: const TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionnaireScreen(),
    );
  }
}

class QuestionnaireScreen extends StatefulWidget {
  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  Map<String, bool> questionsAndAnswers = {
    'Are you aware of any errors, omissions, offences, circumstances or allegations which might result in a claim being made against you?': false,
    'Have you ever been the subject of disciplinary action or investigation by any authority or regulator or professional body?': false,
    'Have you ever been the subject of a criminal investigation or had criminal charges brought against you? For the purposes of this question, please disregard traffic or minor motor vehicle licensing offences': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaire'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ...questionsAndAnswers.keys.map((question) => buildQuestionTile(question)).toList(),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Implement the back navigation logic
                  },
                  child: Text('<< Back'),
                ),
                TextButton(
                  onPressed: () {
                    // Implement the next navigation logic
                  },
                  child: Text('Next >>'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQuestionTile(String question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () => setState(() => questionsAndAnswers[question] = true),
              child: Text(
                'Yes',
                style: TextStyle(color: questionsAndAnswers[question]! ? Colors.green : Colors.grey),
              ),
            ),
            TextButton(
              onPressed: () => setState(() => questionsAndAnswers[question] = false),
              child: Text(
                'No',
                style: TextStyle(color: !questionsAndAnswers[question]! ? Colors.red : Colors.grey),
              ),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}

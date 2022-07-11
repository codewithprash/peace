import 'package:flutter/material.dart';
import 'package:peace/anxietytest/resultanxiety.dart';
import 'package:peace/anxietytest/stanxiety.dart';

import 'qanxiety.dart';

class Mhtanxiety extends StatelessWidget {
  const Mhtanxiety({Key? key}) : super(key: key);

  static int score = 0;
  static int q = 1;
  static String comment = '';
  static String note = 'TAKE SELF ASSESSMENT';
  static void result() {
    if (Mhtanxiety.score >= 15) {
      Mhtanxiety.comment =
          'Warrants active treatment with psychotherapy, medications, or combination';
      Mhtanxiety.note = 'SEVERE';
    } else if (Mhtanxiety.score >= 10) {
      Mhtanxiety.comment =
          'Use clinical judgment (symptom duration, functional impairment) to determine necessity of treatment';
      Mhtanxiety.note = 'MODERATE';
    } else if (Mhtanxiety.score >= 5) {
      Mhtanxiety.comment =
          'Use clinical judgment (symptom duration, functional impairment) to determine necessity of treatment';
      Mhtanxiety.note = 'MILD';
    } else if (Mhtanxiety.score >= 0) {
      Mhtanxiety.comment = 'Not require treatment';
      Mhtanxiety.note = 'NONE';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.lightGreen, primarySwatch: Colors.green),
      title: 'Mental Health Tracker',
      initialRoute: '/',
      routes: {
        '/': (context) => const Stanxiety(),
        //'/home': (context) => const HomePage(),
        '/q1': (context) => const Q1(),
        '/q2': (context) => const Q2(),
        '/q3': (context) => const Q3(),
        '/q4': (context) => const Q4(),
        '/q5': (context) => const Q5(),
        '/q6': (context) => const Q6(),
        '/q7': (context) => const Q7(),

        '/result': (context) => const Resultanxiety(),
      },
    );
  }
}

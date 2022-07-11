import 'package:flutter/material.dart';

import 'q.dart';

import 'result.dart';
import 'start.dart';

class Mhtdata extends StatelessWidget {
  const Mhtdata({Key? key}) : super(key: key);

  static int score = 0;
  static int q = 1;
  static String comment = '';
  static String note = 'TAKE SELF ASSESSMENT';
  static void result() {
    if (Mhtdata.score >= 20) {
      Mhtdata.comment =
          'Warrants active treatment with psychotherapy, medications, or combination';
      Mhtdata.note = 'SEVERE';
    } else if (Mhtdata.score >= 15) {
      Mhtdata.comment =
          'Warrants active treatment with psychotherapy, medications, or combination';
      Mhtdata.note = 'MODERATELY SEVERE';
    } else if (Mhtdata.score >= 10) {
      Mhtdata.comment =
          'Use clinical judgment (symptom duration, functional impairment) to determine necessity of treatment';
      Mhtdata.note = 'MODERATELY';
    } else if (Mhtdata.score >= 5) {
      Mhtdata.comment =
          'Use clinical judgment (symptom duration, functional impairment) to determine necessity of treatment';
      Mhtdata.note = 'MILD';
    } else if (Mhtdata.score >= 0) {
      Mhtdata.comment = 'Not require treatment';
      Mhtdata.note = 'NONE';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink,
        primarySwatch: Colors.pink,
      ),
      title: 'Mental Health Tracker',
      initialRoute: '/',
      routes: {
        '/': (context) => const ST(),
        //'/home': (context) => const HomePage(),
        '/q1': (context) => const Q1(),
        '/q2': (context) => const Q2(),
        '/q3': (context) => const Q3(),
        '/q4': (context) => const Q4(),
        '/q5': (context) => const Q5(),
        '/q6': (context) => const Q6(),
        '/q7': (context) => const Q7(),
        '/q8': (context) => const Q8(),
        '/q9': (context) => const Q9(),
        '/result': (context) => const Result(),
      },
    );
  }
}

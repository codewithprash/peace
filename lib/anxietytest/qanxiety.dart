import 'package:flutter/material.dart';
import '../anxietytest/button.dart';

import 'mhtanxiety.dart';

class Q1 extends StatefulWidget {
  const Q1({Key? key}) : super(key: key);

  @override
  State<Q1> createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  int c = Mhtanxiety.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen.shade200,
        body: Column(children: [
          Container(
              margin: const EdgeInsets.only(bottom: 50),
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xABF8F8F8),
              ),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              child: Text(
                "Q$c: Feeling nervous, anxious, or on edge?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
              )),
          Container(
            // padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Naa(),
          ),
          Container(
            //color: Colors.red,
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Sg(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Half(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Day(),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: reset,
          tooltip: 'RESTART TEST',
          backgroundColor: Colors.red,
          child: const Icon(Icons.restart_alt),
        ));
  }

  void reset() {
    Mhtanxiety.score = 0;
    Mhtanxiety.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q2 extends StatefulWidget {
  const Q2({Key? key}) : super(key: key);

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  int i = Mhtanxiety.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen.shade200,
        body: Column(children: [
          Container(
              margin: const EdgeInsets.only(bottom: 50),
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xABF8F8F8),
              ),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              child: Text(
                "Q$i: Not being able to stop or control worrying?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,
              )),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Naa(),
          ),
          Container(
            //color: Colors.red,
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Sg(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Half(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Day(),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: reset,
          tooltip: 'RESTART TEST',
          backgroundColor: Colors.red,
          child: const Icon(Icons.restart_alt),
        ));
  }

  void reset() {
    Mhtanxiety.score = 0;
    Mhtanxiety.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q3 extends StatefulWidget {
  const Q3({Key? key}) : super(key: key);

  @override
  State<Q3> createState() => _Q3State();
}

class _Q3State extends State<Q3> {
  int i = Mhtanxiety.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen.shade200,
        body: Column(children: [
          Container(
              margin: const EdgeInsets.only(bottom: 50),
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xABF8F8F8),
              ),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              child: Text(
                "Q$i: Worrying too much about different things?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,
              )),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Naa(),
          ),
          Container(
            //color: Colors.red,
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Sg(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Half(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Day(),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: reset,
          tooltip: 'RESTART TEST',
          backgroundColor: Colors.red,
          child: const Icon(Icons.restart_alt),
        ));
  }

  void reset() {
    Mhtanxiety.score = 0;
    Mhtanxiety.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q4 extends StatefulWidget {
  const Q4({Key? key}) : super(key: key);

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  int i = Mhtanxiety.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen.shade200,
        body: Column(children: [
          Container(
              margin: const EdgeInsets.only(bottom: 50),
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xABF8F8F8),
              ),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              child: Text(
                "Q$i: Trouble relaxing?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,
              )),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Naa(),
          ),
          Container(
            //color: Colors.red,
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Sg(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Half(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Day(),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: reset,
          tooltip: 'RESTART TEST',
          backgroundColor: Colors.red,
          child: const Icon(Icons.restart_alt),
        ));
  }

  void reset() {
    Mhtanxiety.score = 0;
    Mhtanxiety.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q5 extends StatefulWidget {
  const Q5({Key? key}) : super(key: key);

  @override
  State<Q5> createState() => _Q5State();
}

class _Q5State extends State<Q5> {
  int i = Mhtanxiety.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen.shade200,
        body: Column(children: [
          Container(
              margin: const EdgeInsets.only(bottom: 50),
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xABF8F8F8),
              ),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              child: Text(
                "Q$i: Being so restless that it is hard to sit still?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,
              )),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Naa(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Sg(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Half(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Day(),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: reset,
          tooltip: 'RESTART TEST',
          backgroundColor: Colors.red,
          child: const Icon(Icons.restart_alt),
        ));
  }

  void reset() {
    Mhtanxiety.score = 0;
    Mhtanxiety.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q6 extends StatefulWidget {
  const Q6({Key? key}) : super(key: key);

  @override
  State<Q6> createState() => _Q6State();
}

class _Q6State extends State<Q6> {
  int i = Mhtanxiety.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen.shade200,
        body: Column(children: [
          Container(
              margin: const EdgeInsets.only(bottom: 50),
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xABF8F8F8),
              ),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              child: Text(
                "Q$i: Becoming easily annoyed or irritable?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,
              )),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Naa(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Sg(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Half(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Day(),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: reset,
          tooltip: 'RESTART TEST',
          backgroundColor: Colors.red,
          child: const Icon(Icons.restart_alt),
        ));
  }

  void reset() {
    Mhtanxiety.score = 0;
    Mhtanxiety.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q7 extends StatefulWidget {
  const Q7({Key? key}) : super(key: key);

  @override
  State<Q7> createState() => _Q7State();
}

class _Q7State extends State<Q7> {
  int i = Mhtanxiety.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen.shade200,
        body: Column(children: [
          Container(
              margin: const EdgeInsets.only(bottom: 50),
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xABF8F8F8),
              ),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              child: Text(
                "Q$i: Feeling afraid, as if something awful might happen?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.start,
              )),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Naa(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Sg(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Half(),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: const Day(),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: reset,
          tooltip: 'RESTART TEST',
          backgroundColor: Colors.red,
          child: const Icon(Icons.restart_alt),
        ));
  }

  void reset() {
    Mhtanxiety.score = 0;
    Mhtanxiety.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

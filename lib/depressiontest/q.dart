import 'package:flutter/material.dart';

import 'button.dart';
import 'mht.dart';

class Q1 extends StatefulWidget {
  const Q1({Key? key}) : super(key: key);

  @override
  State<Q1> createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  int c = Mhtdata.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8BBD0),
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
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 10),
              //  alignment: Alignment.center,
              child: Text(
                "Q$c: Little interest or pleasure in doing things?",
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
    Mhtdata.score = 0;
    Mhtdata.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q2 extends StatefulWidget {
  const Q2({Key? key}) : super(key: key);

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  int i = Mhtdata.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8BBD0),
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
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 10),
              child: Text(
                "Q$i: Feeling down, depressed, or hopeless?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
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
    Mhtdata.score = 0;
    Mhtdata.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q3 extends StatefulWidget {
  const Q3({Key? key}) : super(key: key);

  @override
  State<Q3> createState() => _Q3State();
}

class _Q3State extends State<Q3> {
  int i = Mhtdata.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8BBD0),
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
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 10),
              child: Text(
                "Q$i: Trouble falling or staying asleep, or sleeping too much?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
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
    Mhtdata.score = 0;
    Mhtdata.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q4 extends StatefulWidget {
  const Q4({Key? key}) : super(key: key);

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  int i = Mhtdata.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8BBD0),
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
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 10),
              child: Text(
                "Q$i: Feeling tired or having little energy?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
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
    Mhtdata.score = 0;
    Mhtdata.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q5 extends StatefulWidget {
  const Q5({Key? key}) : super(key: key);

  @override
  State<Q5> createState() => _Q5State();
}

class _Q5State extends State<Q5> {
  int i = Mhtdata.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        body: Column(children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 50),
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xABF8F8F8),
              ),
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 10),
              child: Text(
                "Q$i: Poor appetite or overeating?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
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
    Mhtdata.score = 0;
    Mhtdata.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q6 extends StatefulWidget {
  const Q6({Key? key}) : super(key: key);

  @override
  State<Q6> createState() => _Q6State();
}

class _Q6State extends State<Q6> {
  int i = Mhtdata.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8BBD0),
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
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 10),
              child: Text(
                "Q$i: Feeling bad about yourself — or that you are a failure or have let yourself or your family down?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
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
    Mhtdata.score = 0;
    Mhtdata.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q7 extends StatefulWidget {
  const Q7({Key? key}) : super(key: key);

  @override
  State<Q7> createState() => _Q7State();
}

class _Q7State extends State<Q7> {
  int i = Mhtdata.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8BBD0),
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
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 10),
              child: Text(
                "Q$i: Trouble concentrating on things, such as reading the newspaper or watching television?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
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
    Mhtdata.score = 0;
    Mhtdata.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q8 extends StatefulWidget {
  const Q8({Key? key}) : super(key: key);

  @override
  State<Q8> createState() => _Q8State();
}

class _Q8State extends State<Q8> {
  int i = Mhtdata.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8BBD0),
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
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 10),
              child: Text(
                "Q$i: Moving or speaking so slowly that other people could have noticed? Or so fidgety or restless that you have been moving a lot more than usual?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
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
    Mhtdata.score = 0;
    Mhtdata.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

class Q9 extends StatefulWidget {
  const Q9({Key? key}) : super(key: key);

  @override
  State<Q9> createState() => _Q9State();
}

class _Q9State extends State<Q9> {
  int i = Mhtdata.q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8BBD0),
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
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 10),
              child: Text(
                "Q$i: Thoughts that you would be better off dead, or thoughts of hurting yourself in some way?",
                style: const TextStyle(fontSize: 24),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
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
    Mhtdata.score = 0;
    Mhtdata.q = 1;
    Navigator.pushNamed(context, '/');
  }
}

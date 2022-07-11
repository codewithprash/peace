import 'package:flutter/material.dart';

import 'mht.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 120,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white60,
          ),
          alignment: Alignment.center,
          child: ListTile(
            title: const Text(
              'DEPRESSION LEVEL:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(Mhtdata.note,
                style: const TextStyle(
                  fontSize: 20,
                )),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white60,
          ),
          alignment: Alignment.center,
          child: ListTile(
            title: const Text(
              'COMMENT :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              Mhtdata.comment,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: reset,
          child: const Text('Back to Home'),
        )
      ]),
    );
  }

  void reset() {
    Mhtdata.score = 0;
    Navigator.pushNamed(context, '/');
    Mhtdata.q = 1;
  }
}

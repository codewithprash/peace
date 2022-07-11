import 'package:flutter/material.dart';

import 'mhtanxiety.dart';

class Resultanxiety extends StatefulWidget {
  const Resultanxiety({Key? key}) : super(key: key);

  @override
  State<Resultanxiety> createState() => _ResultanxietyState();
}

class _ResultanxietyState extends State<Resultanxiety> {
  //String n = Mhtanxiety.note;
  // String c = Mhtanxiety.comment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade300,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 120,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white60,
          ),
          alignment: Alignment.center,
          child: ListTile(
            title: const Text(
              'ANXIETY LEVEL:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(Mhtanxiety.note,
                style: const TextStyle(
                  fontSize: 20,
                )),
          ),
        ),
        // Card(
        //   color: Colors.white70,
        //   margin: const EdgeInsets.all(20),
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(15.0),
        //   ),
        //   child: ListTile(
        //     title: const Text(
        //       'DEPRESSION SEVERITY :',
        //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //     ),
        //     subtitle: Text(Mhtanxiety.note,
        //         style: const TextStyle(
        //             fontSize: 20, fontWeight: FontWeight.bold)),
        //   ),
        // ),
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
              Mhtanxiety.comment,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          // child: Column(
          //   children: [
          //     const Text(
          //       "COMMENT",
          //       textAlign: TextAlign.center,
          //       style: TextStyle(fontSize: 30),
          //     ),
          //     Container(
          //       padding: const EdgeInsets.all(20),
          //       child: Text(
          //         '$c.',
          //         textAlign: TextAlign.center,
          //         style: const TextStyle(fontSize: 24),
          //       ),
          //     )
          //   ],
          // ),
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: reset,
          child: const Text('Back to Home'),
        )
      ]),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: reset,
      //   tooltip: 'RESTART TEST',
      //   backgroundColor: Colors.red,
      //   child: const Icon(Icons.restart_alt),
      // ),
    );
  }

  void reset() {
    Mhtanxiety.score = 0;
    Navigator.pushNamed(context, '/');
    Mhtanxiety.q = 1;
  }
}

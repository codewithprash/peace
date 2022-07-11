import 'package:flutter/material.dart';
import '/anxietytest/button.dart';

class Stanxiety extends StatelessWidget {
  const Stanxiety({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade300,
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "MENTAL HEALTH TRACKER",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade800,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/img/yoga.png',
                  //scale: 1,
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            alignment: Alignment.center,
            child: const Start(),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            "Made with ❤ by Team Peace",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.green.shade900,
            ),
          ),
        ],
      ),
    );
  }
}

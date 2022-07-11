import 'package:flutter/material.dart';

import 'button.dart';

class ST extends StatelessWidget {
  const ST({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.white70,
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
                      color: Colors.pink.shade800,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Image.asset(
                  'assets/img/heart.png',
                  // scale: 1.8,
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
              color: Colors.pink.shade900,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:peace/mode/data.dart';
import 'package:peace/pages/logsign.dart';

class Go extends StatelessWidget {
  const Go({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("Welcome to Peace",
                  textAlign: TextAlign.center, style: Model.h1b),
            ),
            Image.asset(
              'assets/img/l1.png',
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                    color: Model.bg, borderRadius: BorderRadius.circular(20)),
                child: Text("Login",
                    textAlign: TextAlign.center, style: Model.p1w),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signup()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                    color: const Color(0xffd4dfdb),
                    borderRadius: BorderRadius.circular(20)),
                child: Text("Signup",
                    textAlign: TextAlign.center, style: Model.p1b),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

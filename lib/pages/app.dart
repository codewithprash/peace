import 'package:flutter/material.dart';
import 'package:peace/mode/data.dart';
import 'package:peace/pages/op.dart';

class Letgo extends StatelessWidget {
  const Letgo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Model.bg,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/img/p1.png'),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Say hi to your selfcare App",
                    textAlign: TextAlign.center, style: Model.h1w),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text("Feel better. Sleep Better.",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'Robomed')),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Go()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 80),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  height: 60,
                  alignment: Alignment.center,
                  child: Text("Let's Get Started", style: Model.bp1b),
                ),
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:peace/pages/tests.dart';
import '../../mode/data.dart';
import '../../tabs/tabs.dart';

import 'coming_soon.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          // title: const Text(
          //   'For you',
          //   style: TextStyle(
          //       color: Colors.black87,
          //       fontSize: 22,
          //       fontWeight: FontWeight.w600),
          // ),
          actions: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffd4dfdb),
              ),
              margin: const EdgeInsets.all(5),
              child: IconButton(
                  tooltip: 'Notification',
                  iconSize: 26,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Comingsoon()),
                    );
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: Model.bg,
                  )),
            ),
          ],
        ),

        // backgroundColor: const Color(0xffd4dfdb),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: 200,
                child: const Text(
                  'How are you feeling today?',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.amber.withOpacity(0.5),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/img/emo1.png')),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.amber.withOpacity(0.5),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/img/emo2.png')),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.amber.withOpacity(0.5),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/img/emo3.png')),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.amber.withOpacity(0.5),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/img/emo4.png')),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Self assessment test',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tests()),
                  );
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  height: 180,
                  decoration: BoxDecoration(
                      // boxShadow: const [
                      //   BoxShadow(
                      //     color: Color(0xFFB3E5FC),
                      //     blurRadius: 10.0,
                      //     spreadRadius: 5.0,
                      //     offset: Offset(
                      //       5.0, // Move to right 10  horizontally
                      //       5.0, // Move to bottom 10 Vertically
                      //     ),
                      //   )
                      // ],
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/img/start.webp',
                        ),
                      )),
                  // child: Center(
                  //     child: Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     color: Colors.lightBlue.shade50,
                  //   ),
                  //   padding: const EdgeInsets.all(5),
                  //   child: const Text('Start'),
                  // ))
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Mental disorder',
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Anxietytab()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/img/m1.webp',
                              ),
                            )),
                        child: Center(
                          child: Text(
                            'Anxiety',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Depressiontab()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/img/m2.png',
                              ),
                            )),
                        child: Center(
                          child: Text(
                            'Depression',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BipolarTab()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/img/m3.webp',
                              ),
                            )),
                        child: Center(
                          child: Text(
                            'Bipolar',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:peace/mode/data.dart';
import 'package:peace/dashboard/coming_soon.dart';
import 'package:peace/dashboard/profile.dart';
import 'home.dart';

class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  int index = 1;
  final screens = [
    const Comingsoon(),
    const Home(),
    const Profile(),
  ];
  //final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
            indicatorColor: Color(0xffd4dfdb),
            height: 60,
          ),
          child: NavigationBar(
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              selectedIndex: index,
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              destinations: [
                NavigationDestination(
                    icon: Icon(Icons.space_dashboard_outlined, color: Model.bg),
                    selectedIcon: Icon(Icons.space_dashboard, color: Model.bg),
                    label: 'Explore'),
                NavigationDestination(
                    icon: Icon(Icons.home_outlined, color: Model.bg),
                    selectedIcon: Icon(Icons.home_rounded, color: Model.bg),
                    label: 'Home'),
                NavigationDestination(
                    icon: Icon(Icons.person_outline_rounded, color: Model.bg),
                    selectedIcon: Icon(Icons.person_rounded, color: Model.bg),
                    label: 'Profile')
              ]),
        ),
      );
}

// class Save extends StatelessWidget {
//   const Save({Key? key}) : super(key: key);
//   Future out() async {
//     try {
//       await FirebaseAuth.instance.signOut();
//     } on FirebaseAuthException catch (e) {
//       // ignore: avoid_print
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) => SafeArea(
//         child: Center(
//             child: Container(
//           color: Colors.lightGreen,
//           height: 30,
//           width: 80,
//           child: GestureDetector(
//             onTap: out,
//             child: Container(
//               alignment: Alignment.center,
//               child: const Text(
//                 "sign out",
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         )),
//       );
// }

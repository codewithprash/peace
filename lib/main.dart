import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:peace/firebase_options.dart';
import 'package:peace/pages/app.dart';
import 'dashboard/dash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

final navigatorkey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xff2a6049),
              primary: const Color(0xff2a6049),
              secondary: const Color(0xffd4dfdb)),
          primaryColor: const Color(0xff2a6049),
        ),
        navigatorKey: navigatorkey,
        home: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(child: Text('something went wrong'));
              } else if (snapshot.hasData) {
                return const Dash();
              } else {
                return const Letgo();
              }
            }),
      );
}

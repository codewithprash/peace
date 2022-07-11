import 'package:flutter/material.dart';
import 'package:peace/mode/data.dart';

class Comingsoon extends StatelessWidget {
  const Comingsoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Model.bg,
          title: const Text('coming soon'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Coming soon',
                style: Theme.of(context).textTheme.headline4,
              ),
              const Text(
                'Made with ❤ ©Peace 2022',
              ),
            ],
          ),
        ),
      );
}

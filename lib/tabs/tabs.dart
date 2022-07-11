import 'package:flutter/material.dart';
import 'package:peace/tabs/anxiety.dart';
import 'package:peace/tabs/bipolar.dart';
import 'package:peace/tabs/depression.dart';
import '../mode/data.dart';

class Anxietytab extends StatelessWidget {
  const Anxietytab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Model.bg,
          bottom: const TabBar(
            indicatorColor: Colors.deepOrange,
            tabs: [
              Tab(
                text: 'OVERVIEW',
              ),
              Tab(
                text: 'SYMPTOMS',
              ),
              Tab(
                text: 'CURE',
              ),
            ],
          ),
          title: const Text('Anxiety disorder'),
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            Overview(),
            Symptoms(),
            Treatments(),
          ],
        ),
      ),
    );
  }
}

class Depressiontab extends StatelessWidget {
  const Depressiontab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Model.bg,
          bottom: const TabBar(
            indicatorColor: Colors.deepOrange,
            tabs: [
              Tab(
                text: 'OVERVIEW',
              ),
              Tab(
                text: 'SYMPTOMS',
              ),
              Tab(
                text: 'CURE',
              ),
            ],
          ),
          title: const Text('Clinical Depression'),
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            Depressionoverview(),
            DepressionSymptoms(),
            DepressionTreatments(),
          ],
        ),
      ),
    );
  }
}

class BipolarTab extends StatelessWidget {
  const BipolarTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Model.bg,
          bottom: const TabBar(
            indicatorColor: Colors.deepOrange,
            tabs: [
              Tab(
                text: 'OVERVIEW',
              ),
              Tab(
                text: 'SYMPTOMS',
              ),
              Tab(
                text: 'CURE',
              ),
            ],
          ),
          title: const Text('Bipolar disorder'),
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            BipolarOverview(),
            BipolarSymptoms(),
            BipolarTreatment(),
          ],
        ),
      ),
    );
  }
}

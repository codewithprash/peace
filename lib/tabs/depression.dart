import 'package:flutter/material.dart';
import '../mode/data.dart';

class Depressionoverview extends StatelessWidget {
  const Depressionoverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffd4dfdb),
                ),
                child: const Text(
                  "A mental health disorder characterised by persistently depressed mood or loss of interest in activities, causing significant impairment in daily life. Possible causes include a combination of biological, psychological and social sources of distress. Increasingly, research suggests that these factors may cause changes in brain function, including altered activity of certain neural circuits in the brain. The persistent feeling of sadness or loss of interest that characterises major depression can lead to a range of behavioural and physical symptoms. These may include changes in sleep, appetite, energy level, concentration, daily behaviour or self-esteem. Depression can also be associated with thoughts of suicide. The mainstay of treatment is usually medication, talk therapy or a combination of the two. Increasingly, research suggests that these treatments may normalise brain changes associated with depression.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffd4dfdb),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Very common',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('More than 10 million cases per year (India)'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Treatable by a medical professional",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Medium-term: resolves within months",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Requires a medical diagnosis",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Lab tests or imaging not required",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Consult a doctor for medical advice',
                ),
              )
            ],
          ),
        ),
      );
}

class DepressionSymptoms extends StatelessWidget {
  const DepressionSymptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Card(
                child: ListTile(
                  title: Text(
                    'Requires a medical diagnosis',
                  ),
                  subtitle: Text(
                      "The persistent feeling of sadness or loss of interest that characterises major depression can lead to a range of behavioural and physical symptoms. These may include changes in sleep, appetite, energy level, concentration, daily behaviour or self-esteem. Depression can also be associated with thoughts of suicide."),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text('People may experience:'),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color(0xffd4dfdb),
                child: const ListTile(
                  title: Text(
                    'Mood:',
                  ),
                  subtitle: Text(
                      "anxiety, apathy, general discontent, guilt, hopelessness, loss of interest, loss of interest or pleasure in activities, mood swings, or sadness"),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color(0xffd4dfdb),
                child: const ListTile(
                  title: Text(
                    'Behavioural:',
                  ),
                  subtitle: Text(
                      "agitation, excessive crying, irritability, restlessness, or social isolation"),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color(0xffd4dfdb),
                child: const ListTile(
                  title: Text(
                    'Sleep:',
                  ),
                  subtitle: Text(
                      "early awakening, excess sleepiness, insomnia, or restless sleep"),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color(0xffd4dfdb),
                child: const ListTile(
                  title: Text(
                    'Whole body:',
                  ),
                  subtitle:
                      Text("excessive hunger, fatigue, or loss of appetite"),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color(0xffd4dfdb),
                child: const ListTile(
                  title: Text(
                    'Cognitive:',
                  ),
                  subtitle: Text(
                      "lack of concentration, slowness in activity, or thoughts of suicide"),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color(0xffd4dfdb),
                child: const ListTile(
                  title: Text(
                    'Weight:',
                  ),
                  subtitle: Text("weight gain or weight loss"),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color(0xffd4dfdb),
                child: const ListTile(
                  title: Text(
                    'Also common:',
                  ),
                  subtitle:
                      Text("poor appetite or repeatedly going over thoughts"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Consult a doctor for medical advice',
                ),
              )
            ],
          ),
        ),
      );
}

class DepressionTreatments extends StatelessWidget {
  const DepressionTreatments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Card(
                child: ListTile(
                  title: Text(
                    'Treatment consists of antidepressants',
                  ),
                  subtitle: Text(
                      "The mainstay of treatment is usually medication, talk therapy or a combination of the two. Increasingly, research suggests that these treatments may normalise brain changes associated with depression."),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                color: const Color(0xffd4dfdb),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DepressionCardTherapies()),
                    );
                  },
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  title: const Text(
                    'Therapies',
                  ),
                  subtitle: const Text(
                      "Cognitive behavioral therapy, Behaviour therapy and Psychotherapy"),
                ),
              ),
              Card(
                color: const Color(0xffd4dfdb),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DepressionCardMedication()),
                    );
                  },
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  title: const Text(
                    'Medications',
                  ),
                  subtitle: const Text("SSRIs, Antidepressant and Anxiolytic"),
                ),
              ),
              Card(
                color: const Color(0xffd4dfdb),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DepressionCardMedical()),
                    );
                  },
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  title: const Text(
                    'Medical procedure',
                  ),
                  subtitle: const Text("Electroconvulsive therapy"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Consult a doctor for medical advice',
                ),
              )
            ],
          ),
        ),
      );
}

//
//cards
//

class DepressionCardTherapies extends StatelessWidget {
  const DepressionCardTherapies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Model.bg,
          title: const Text('Therapies'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Card(
                child: ListTile(
                  title: Text(
                    'Cognitive behavioral therapy',
                  ),
                  subtitle: Text(
                      "A talk therapy focused on modifying negative thoughts, behaviours and emotional responses associated with psychological distress."),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Behaviour therapy',
                  ),
                  subtitle: Text(
                      "A therapy focused on modifying harmful behaviours associated with psychological distress."),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Psychotherapy',
                  ),
                  subtitle: Text(
                      "Treatment of mental or behavioural disorders through talk therapy."),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Consult a doctor for medical advice',
                ),
              )
            ],
          ),
        ),
      );
}

class DepressionCardMedication extends StatelessWidget {
  const DepressionCardMedication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Model.bg,
          title: const Text('Medications'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Card(
                child: ListTile(
                  title: Text(
                    'SSRIs',
                  ),
                  subtitle:
                      Text("Eases symptoms of depressed mood and anxiety."),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Anxiolytic',
                  ),
                  subtitle:
                      Text("Relieves anxiety and tension. May promote sleep."),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Antidepressant',
                  ),
                  subtitle: Text(
                      "Taking medications designed to help relieve symptoms of depression. Some antidepressants also have other uses, such as treating chronic"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Consult a doctor for medical advice',
                ),
              )
            ],
          ),
        ),
      );
}

class DepressionCardMedical extends StatelessWidget {
  const DepressionCardMedical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Model.bg,
          title: const Text('Medications'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Card(
                child: ListTile(
                  title: Text(
                    'Electroconvulsive therapy',
                  ),
                  subtitle: Text(
                      "Treating mental illness by sending electric currents through the brain to trigger a seizure. Also known as shock treatment."),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Consult a doctor for medical advice',
                ),
              )
            ],
          ),
        ),
      );
}

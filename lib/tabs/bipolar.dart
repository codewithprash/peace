import 'package:flutter/material.dart';
import '../mode/data.dart';

class BipolarOverview extends StatelessWidget {
  const BipolarOverview({Key? key}) : super(key: key);

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
                  "A disorder associated with episodes of mood swings ranging from depressive lows to manic highs. The exact cause of bipolar disorder isn’t known, but a combination of genetics, environment and altered brain structure and chemistry may play a role. Manic episodes may include symptoms such as high energy, reduced need for sleep and loss of touch with reality. Depressive episodes may include symptoms such as low energy, low motivation and loss of interest in daily activities. Mood episodes last days to months at a time and may also be associated with suicidal thoughts. Treatment is usually lifelong and often involves a combination of medications and psychotherapy.",
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
                        "Treatment can help, but this condition can't be cured",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Chronic: can last for years or be lifelong",
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
                  'For informational purposes only. Consult your local medical authority for advice.',
                ),
              )
            ],
          ),
        ),
      );
}

class BipolarSymptoms extends StatelessWidget {
  const BipolarSymptoms({Key? key}) : super(key: key);

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
                      "Manic episodes may include symptoms such as high energy, reduced need for sleep and loss of touch with reality. Depressive episodes may include symptoms such as low energy, low motivation and loss of interest in daily activities. Mood episodes last days to months at a time and may also be associated with suicidal thoughts."),
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
                      "mood swings, sadness, elevated mood, anger, anxiety, apathy, apprehension, euphoria, general discontent, guilt, hopelessness, loss of interest, or loss of interest or pleasure in activities"),
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
                      "irritability, risk-taking behaviours, disorganised behaviour, aggression, agitation, crying, excess desire for sex, hyperactivity, impulsivity, restlessness, or self-harm"),
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
                      "unwanted thoughts, delusion, lack of concentration, racing thoughts, slowness in activity, or false belief of superiority"),
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
                    'Psychological:',
                  ),
                  subtitle: Text(
                      " depression, manic episode, agitated depression, or paranoia"),
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
                    'Sleep:',
                  ),
                  subtitle:
                      Text("difficulty falling asleep or excess sleepiness"),
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
                  subtitle: Text("fatigue or rapid and frenzied speaking"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'For informational purposes only. Consult your local medical authority for advice.',
                ),
              )
            ],
          ),
        ),
      );
}

class BipolarTreatment extends StatelessWidget {
  const BipolarTreatment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Card(
                child: ListTile(
                  title: Text(
                    'Treatment consists of medications and therapy',
                  ),
                  subtitle: Text(
                      "Treatment is usually lifelong and often involves a combination of medications and psychotherapy."),
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
                          builder: (context) => const BipolarCardTherapies()),
                    );
                  },
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  title: const Text(
                    'Therapies',
                  ),
                  subtitle: const Text(
                      "Support group, Cognitive behavioral therapy, Psychoeducation, Family therapy and Psychotherapy"),
                ),
              ),
              Card(
                color: const Color(0xffd4dfdb),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BipolarCardMedication()),
                    );
                  },
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  title: const Text(
                    'Medications',
                  ),
                  subtitle:
                      const Text("Anticonvulsant, Antipsychotic and SSRIs"),
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
                              const BipolarCardSupportiveCare()),
                    );
                  },
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  title: const Text(
                    'Supportive care',
                  ),
                  subtitle: const Text("Hospitalization"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'For informational purposes only. Consult your local medical authority for advice.',
                ),
              )
            ],
          ),
        ),
      );
}

class BipolarCardTherapies extends StatelessWidget {
  const BipolarCardTherapies({Key? key}) : super(key: key);

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
                    'Support group',
                  ),
                  subtitle: Text(
                      "A forum for counseling and sharing experiences among people with a similar condition or goal, such as depression or weight loss."),
                ),
              ),
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
                    'Psychoeducation',
                  ),
                  subtitle: Text(
                      "Education about mental health that also serves to support, validate and empower patients."),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Family therapy',
                  ),
                  subtitle: Text(
                      "Psychological counselling that helps families resolve conflicts and communicate more effectively."),
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

class BipolarCardMedication extends StatelessWidget {
  const BipolarCardMedication({Key? key}) : super(key: key);

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
                    'Antipsychotic',
                  ),
                  subtitle: Text(
                      "Reduces or improves the symptoms of certain psychiatric conditions."),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Anticonvulsant',
                  ),
                  subtitle: Text(
                      "Prevents or controls seizures, relieves pain and treats symptoms of certain psychiatric disorders."),
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

class BipolarCardSupportiveCare extends StatelessWidget {
  const BipolarCardSupportiveCare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Model.bg,
          title: const Text('Supportive care'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Card(
                child: ListTile(
                  title: Text(
                    'Hospitalization',
                  ),
                  subtitle: Text(
                      "A higher level of care whereby patients are closely monitored and may be given medications that would not be available at home."),
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

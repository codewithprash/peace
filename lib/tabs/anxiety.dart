import 'package:flutter/material.dart';
import '../mode/data.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

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
                  "A mental health disorder characterised by feelings of worry, anxiety or fear that are strong enough to interfere with one's daily activities. Examples of anxiety disorders include panic attacks, obsessive-compulsive disorder and post-traumatic stress disorder. Symptoms include stress that's out of proportion to the impact of the event, inability to set aside a worry and restlessness. Treatment includes counselling or medication, including antidepressants.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.start,
                ),
              ),

              // const Divider(
              //   height: 100,
              //   thickness: 1,
              //   color: Colors.black,
              // ),
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
                        "Usually self-diagnosable",
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

class Symptoms extends StatelessWidget {
  const Symptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Card(
                child: ListTile(
                  title: Text(
                    'Usually self-diagnosable',
                  ),
                  subtitle: Text(
                      "Symptoms include stress that's out of proportion to the impact of the event, inability to set aside a worry and restlessness."),
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
                    'Behavioural:',
                  ),
                  subtitle:
                      Text("hypervigilance, irritability, or restlessness"),
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
                      "lack of concentration, racing thoughts, or unwanted thoughts"),
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
                  subtitle: Text("fatigue or sweating"),
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
                  subtitle: Text(
                      "anxiety, excessive worry, fear, feeling of impending doom, insomnia, nausea, palpitations, or trembling"),
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

class Treatments extends StatelessWidget {
  const Treatments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Card(
                child: ListTile(
                  title: Text(
                    'Treatment consists of therapy',
                  ),
                  subtitle: Text(
                      "Treatment includes counselling or medication, including antidepressants."),
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
                      MaterialPageRoute(builder: (context) => const Selfcare()),
                    );
                  },
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  title: const Text(
                    'Self-care',
                  ),
                  subtitle: const Text(
                      "Avoid alcohol, Reduce caffeine intake, Physical exercise, Quitting smoking, Relaxation techniques, Stress management and Healthy diet"),
                ),
              ),
              Card(
                color: const Color(0xffd4dfdb),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Therapies()),
                    );
                  },
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  title: const Text(
                    'Therapies',
                  ),
                  subtitle: const Text(
                      "Cognitive behavioral therapy, Meditation and Psychotherapy"),
                ),
              ),
              Card(
                color: const Color(0xffd4dfdb),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Medication()),
                    );
                  },
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  title: const Text(
                    'Medications',
                  ),
                  subtitle: const Text(
                      "SSRIs, Anxiolytic, Antidepressant, Sedative and Nerve pain medication"),
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

class Selfcare extends StatelessWidget {
  const Selfcare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Model.bg,
          title: const Text('Self-care'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Card(
                child: ListTile(
                  title: Text(
                    'Avoid alcohol',
                  ),
                  subtitle: Text(
                      "How alcohol worsens anxiety. Alcohol changes levels of serotonin and other neurotransmitters in the brain, which can worsen anxiety. In fact, you may feel more anxious after the alcohol wears off. Alcohol-induced anxiety can last for several hours, or even for an entire day after drinking."),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Reduce caffeine intake',
                  ),
                  subtitle: Text(
                      "There is an association between the overuse of caffeine and anxiety. The effects of having too much caffeine can mimic symptoms of, or worsen anxiety. People who experience caffeine-induced anxiety should avoid or reduce their consumption of caffeine."),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Physical exercise',
                  ),
                  subtitle: Text(
                      "Doing 30 minutes or more of exercise a day for three to five days a week may significantly improve depression or anxiety symptoms. But smaller amounts of physical activity — as little as 10 to 15 minutes at a time — may make a difference."),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Quitting smoking',
                  ),
                  subtitle: Text(
                      "Within 24 hours of quitting smoking or other tobacco products, you may feel tense and agitated. You may feel a tightness in your muscles—especially around the neck and shoulders. Studies have found that anxiety is one of the most common negative feelings associated with quitting."),
                ),
              ),
              Card(
                child: ListTile(
                    title: Text(
                      'Relaxation techniques',
                    ),
                    subtitle: ListTile(
                      title: Text(
                        'Six relaxation techniques to reduce stress',
                      ),
                      subtitle: Text(
                          '1. Breath focus. \n 2. Body scan.\n 3. Guided imagery.\n 4. Mindfulness meditation.\n 5. Yoga, tai chi, and qigong.\n 6. Repetitive prayer.'),
                    )),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Healthy diet',
                  ),
                  subtitle: Text(
                      "Eat foods rich in complex carbohydrates, such as whole grains — for example, oatmeal, quinoa, whole-grain breads and whole-grain cereals. Steer clear of foods that contain simple carbohydrates, such as sugary foods and drinks. Drink plenty of water. Even mild dehydration can affect your mood."),
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

class Therapies extends StatelessWidget {
  const Therapies({Key? key}) : super(key: key);

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
                    'Meditation',
                  ),
                  subtitle:
                      Text("Improves mental health and helps with relaxation."),
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

class Medication extends StatelessWidget {
  const Medication({Key? key}) : super(key: key);

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
              Card(
                child: ListTile(
                  title: Text(
                    'Sedative',
                  ),
                  subtitle: Text(
                      "Causes drowsiness, calmness and dulled senses. Some types may become addictive."),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Nerve pain medication',
                  ),
                  subtitle: Text("Blocks pain caused by damaged nerves."),
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

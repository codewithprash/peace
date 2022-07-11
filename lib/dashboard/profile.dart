import 'package:flutter/material.dart';
import 'package:peace/anxietytest/mhtanxiety.dart';

import 'package:peace/depressiontest/mht.dart';

import 'package:peace/mode/data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:peace/pages/changepass.dart';
import 'package:url_launcher/link.dart';

import 'coming_soon.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  Future out() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e);
      //Scaffold.of(context).SnackBar(),
      //showSnackBar(e.message);

    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    // final depression = Mhtdata.note;

    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffd4dfdb),
            ),
            margin: const EdgeInsets.all(5),
            child: IconButton(
                tooltip: 'Logout',
                iconSize: 26,
                onPressed: out,
                icon: Icon(
                  Icons.logout_rounded,
                  color: Model.bg,
                )),
          ),
        ],
        title: const Text(
          'Profile',
          // style: Theme.of(context).textTheme.headline5,
        ),
        // elevation: 0,
        backgroundColor: Model.bg,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: SizedBox(
                        height: 100,
                        width: 100,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage('assets/img/dp1.png'),
                            // height: 100,
                            // width: 100,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(20),
                  //   child:
                  // ),
                  // Text(Mhtdata.note)
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    user.email!,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: ListTile(
                        title: const Text('Anxiety level:'),
                        subtitle: Text(Mhtanxiety.note),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 160,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: ListTile(
                        title: const Text('Depression level:'),
                        subtitle: Text(Mhtdata.note),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('General'),
            ),
            Card(
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Comingsoon()),
                    );
                  },
                  leading: Icon(Icons.payment_rounded, color: Model.bg),
                  title: const Text('Subscription & payment'),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded)),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profilesetting()),
                  );
                },
                leading: Icon(Icons.manage_accounts, color: Model.bg),
                title: const Text('Profile settings'),
                trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Changepass()),
                  );
                },
                leading: Icon(Icons.key, color: Model.bg),
                title: const Text('Password'),
                trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Comingsoon()),
                  );
                },
                leading: Icon(Icons.notifications, color: Model.bg),
                title: const Text('Notifications'),
                trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Feedback'),
            ),
            Card(
              child: Link(
                target: LinkTarget.self,
                uri: Uri.parse(
                    'https://docs.google.com/forms/d/e/1FAIpQLScSzSJX97YigeYyau6zLEtm_ODAaxT6CbqwQUOJiS-usf8R5Q/viewform?usp=sf_link'),
                builder: (context, followLink) => ListTile(
                  onTap: followLink,
                  leading: Icon(Icons.thumbs_up_down_rounded, color: Model.bg),
                  title: const Text('App feedback'),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ),
            ),
            Card(
              child: Link(
                target: LinkTarget.self,
                uri: Uri.parse(
                    'https://docs.google.com/forms/d/e/1FAIpQLScSzSJX97YigeYyau6zLEtm_ODAaxT6CbqwQUOJiS-usf8R5Q/viewform?usp=sf_link'),
                builder: (context, followLink) => ListTile(
                  onTap: followLink,
                  leading: Icon(Icons.bug_report, color: Model.bg),
                  title: const Text('Bug report'),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(child: Text('Made with ❤ ©Peace 2022')),
            ),
          ],
        ),
      ),
    );
  }
}

class Profilesetting extends StatelessWidget {
  const Profilesetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile settings',
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 200,
            child: Center(
              child: SizedBox(
                  child: ClipOval(
                child: Image(
                  image: AssetImage('assets/img/dp1.png'),
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'User Id',
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.badge, color: Model.bg),
              title: Text(user.uid.substring(0, 8)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text('Email'),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Comingsoon()),
                );
              },
              leading: Icon(Icons.email, color: Model.bg),
              title: Text(user.email!),
              // trailing: const Icon(Icons.keyboard_arrow_right_rounded),
            ),
          ),
        ],
      ),
    );
  }
}

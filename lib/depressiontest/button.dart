import 'package:flutter/material.dart';

import 'mht.dart';

class Naa extends StatelessWidget {
  const Naa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Mhtdata.score += 0;
        Mhtdata.q++;
        int i = Mhtdata.q;
        if (i < 10) {
          Navigator.pushNamed(context, '/q$i');
        } else {
          Mhtdata.result();
          Navigator.pushNamed(context, '/result');
        }
      },
      child: Container(
        height: 55.0,
        // padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: const Color(0xABF8F8F8),
        ),
        child: const Center(
          child: Text('Not at all'),
        ),
      ),
    );
  }
}

class Sg extends StatelessWidget {
  const Sg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Mhtdata.score += 1;
        Mhtdata.q++;
        int i = Mhtdata.q;
        if (i < 10) {
          Navigator.pushNamed(context, '/q$i');
        } else {
          Mhtdata.result();
          Navigator.pushNamed(context, '/result');
        }
      },
      child: Container(
        height: 55.0,
        // padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: const Color(0xABF8F8F8),
        ),
        child: const Center(
          child: Text('Several days'),
        ),
      ),
    );
  }
}

class Half extends StatelessWidget {
  const Half({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Mhtdata.score += 2;
        Mhtdata.q++;
        int i = Mhtdata.q;
        if (i < 10) {
          Navigator.pushNamed(context, '/q$i');
        } else {
          Mhtdata.result();
          Navigator.pushNamed(context, '/result');
        }
      },
      child: Container(
        height: 55.0,
        // padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: const Color(0xABF8F8F8),
        ),
        child: const Center(
          child: Text('More than half the days'),
        ),
      ),
    );
  }
}

class Day extends StatelessWidget {
  const Day({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Mhtdata.score += 3;
        Mhtdata.q++;
        int i = Mhtdata.q;
        if (i < 10) {
          Navigator.pushNamed(context, '/q$i');
        } else {
          Mhtdata.result();
          Navigator.pushNamed(context, '/result');
        }
      },
      child: Container(
        height: 55.0,
        // padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: const Color(0xABF8F8F8),
        ),
        child: const Center(
          child: Text('Nearly every day'),
        ),
      ),
    );
  }
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/q1');
      },
      child: Container(
        height: 60.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: const Color(0xABF8F8F8),
        ),
        child: Center(
          child: Text(
            'START TEST',
            style: TextStyle(
                fontSize: 20,
                color: Colors.pink.shade900,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

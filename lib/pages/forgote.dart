import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../mode/data.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  Future reset() async {
    FocusScope.of(context).unfocus();
    final isValidForm = formkey.currentState!.validate();

    if (isValidForm) {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => Center(
          child: CircularProgressIndicator(
            color: Model.bg,
          ),
        ),
      );

      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(
          email: _email.text.trim(),
        );

        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(
        //       content: Text('not erroe'), backgroundColor: Colors.red),
        // );

        navigatorkey.currentState!.popUntil((route) => route.isFirst);
      } on FirebaseAuthException catch (e) {
        //print(e);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(e.message.toString()), backgroundColor: Colors.red),
        );
      }
    }
  }

  final formkey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();

  @override
  void dispose() {
    _email.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Forgot password'),
          centerTitle: true,
        ),
        body: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25, bottom: 10),
                child: Text('Reset link will be send to your email'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Model.bg,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: const Icon(
                        Icons.email_rounded,
                        // color: Model.bg,
                      ),
                      hintText: 'Email',
                      fillColor: const Color(0xffd4dfdb),
                      filled: true),
                  validator: (value) {
                    final regExp = RegExp(
                        r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)');

                    if (!regExp.hasMatch(value!)) {
                      return 'Enter a valid email';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),
              ),

              const SizedBox(height: 100),
              GestureDetector(
                onTap: reset,
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Model.bg, borderRadius: BorderRadius.circular(20)),
                  child: Text("Reset",
                      textAlign: TextAlign.center, style: Model.p1w),
                ),
              ),
              // const SizedBox(height: 10),
            ],
          ),
        ),
      );
}

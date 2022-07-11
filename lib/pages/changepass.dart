import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../mode/data.dart';

class Changepass extends StatefulWidget {
  const Changepass({Key? key}) : super(key: key);

  @override
  State<Changepass> createState() => _ChangepassState();
}

class _ChangepassState extends State<Changepass> {
  final user = FirebaseAuth.instance.currentUser!;

  Future updatepass() async {
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
      // final newPassword = _pass.text.trim();
      try {
        await user.updatePassword(_pass.text.trim());
        await FirebaseAuth.instance.signOut();

        navigatorkey.currentState!.popUntil((route) => route.isFirst);
      } on FirebaseAuthException catch (e) {
        // print(e);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(e.message.toString()), backgroundColor: Colors.red),
        );
      }
    }
  }

  // bool _isVisible = true;
  final formkey = GlobalKey<FormState>();

  final TextEditingController _oldpass = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  // final TextEditingController _confirmpass = TextEditingController();

  @override
  void dispose() {
    _oldpass.dispose();
    _pass.dispose();
    // _confirmpass.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password'),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: Form(
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        key: formkey,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //const SizedBox(height: 40),
              // Text(
              //   'Update password',
              //   style: Theme.of(context).textTheme.headline4,
              // ),
              // const SizedBox(height: 50),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: TextFormField(
              //     controller: _oldpass,
              //     obscureText: _isVisible,
              //     decoration: InputDecoration(
              //         errorBorder: OutlineInputBorder(
              //           borderSide: const BorderSide(
              //             color: Colors.red,
              //           ),
              //           borderRadius: BorderRadius.circular(20),
              //         ),
              //         focusedErrorBorder: OutlineInputBorder(
              //           borderSide: const BorderSide(
              //             color: Colors.red,
              //           ),
              //           borderRadius: BorderRadius.circular(20),
              //         ),
              //         enabledBorder: OutlineInputBorder(
              //           borderSide: const BorderSide(color: Colors.white),
              //           borderRadius: BorderRadius.circular(20),
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderSide: BorderSide(
              //             color: Model.bg,
              //           ),
              //           borderRadius: BorderRadius.circular(20),
              //         ),
              //         suffixIcon: IconButton(
              //             onPressed: () {
              //               setState(() {
              //                 _isVisible = !_isVisible;
              //               });
              //             },
              //             icon: _isVisible
              //                 ? Icon(Icons.visibility_off_rounded,
              //                     color: Model.bg)
              //                 : const Icon(
              //                     Icons.visibility,
              //                   )),
              //         prefixIcon: const Icon(
              //           Icons.lock,
              //           // color: Model.bg,
              //         ),
              //         hintText: 'Current password',
              //         fillColor: const Color(0xffd4dfdb),
              //         filled: true),
              //     validator: (value) {
              //       if (value != null && value.length < 8) {
              //         return 'Your password must have at least 8 characters';
              //       }
              //       return null;
              //     },
              //     keyboardType: TextInputType.visiblePassword,
              //     textInputAction: TextInputAction.next,
              //   ),
              // ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: _pass,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Model.bg,
                        ),
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
                      prefixIcon: const Icon(
                        Icons.lock,
                        // color: Model.bg,
                      ),
                      hintText: 'New Password',
                      fillColor: const Color(0xffd4dfdb),
                      filled: true),
                  validator: (value) {
                    // if (value = _oldpass.text) {
                    //   return 'password do not same as old';
                    // } else
                    if (value != null && value.length < 8) {
                      return 'Your password must be have at least 8 characters';
                    }
                    return null;
                  },
                  // maxLength: 20,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  //   controller: _confirmpass,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Model.bg,
                        ),
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
                      prefixIcon: const Icon(
                        Icons.lock,
                        // color: Model.bg,
                      ),
                      hintText: 'confirm password',
                      fillColor: const Color(0xffd4dfdb),
                      filled: true),
                  validator: (value) {
                    if (value != _pass.text) {
                      return 'password do not match';
                    }
                    return null;
                  },
                  maxLength: 20,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
              ),
              const SizedBox(height: 10),

              const SizedBox(height: 60),
              GestureDetector(
                onTap: updatepass,
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Model.bg, borderRadius: BorderRadius.circular(20)),
                  child: Text("Change password",
                      textAlign: TextAlign.center, style: Model.p1w),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../firebase_options.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: FutureBuilder(
          future: Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform),
          builder: (context, snapshot) {
            switch(snapshot.connectionState) {

              case ConnectionState.done:
                return Column(
                  children: [
                    TextField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(hintText: 'Enter email'),
                    ),
                    TextField(
                      controller: _password,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: const InputDecoration(
                        hintText: 'Enter password',
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        try {
                          final email = _email.text;
                          final password = _password.text;
                          final userCredential = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: email,
                            password: password,
                          );
                        } on FirebaseAuthException catch (e){
                          print('user not found');
                        }
                        on Exception catch (e) {
                          print('something fucky' + e.runtimeType.toString());
                        }
                      },
                      child: const Text('Login'),
                    ),
                  ],
                );
              default:
                return const Text('Loading...');
            }
          }),
    );
  }
}

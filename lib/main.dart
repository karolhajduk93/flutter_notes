import 'package:flutter/material.dart';
import 'package:flutter_notes/constants/routes.dart';
import 'package:flutter_notes/services/auth/auth_service.dart';
import 'package:flutter_notes/views/login_view.dart';
import 'package:flutter_notes/views/notes/new_note_view.dart';
import 'package:flutter_notes/views/notes/notes_view.dart';
import 'package:flutter_notes/views/register_view.dart';
import 'package:flutter_notes/views/verify_email_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'Notes App',
    theme: ThemeData.dark(),
    home: const HomePage(),
    routes: {
      notesRoute: (context) => const NotesView(),
      loginRoute: (context) => const LoginView(),
      registerRoute: (context) => const RegisterView(),
      verifyEmailRoute: (context) => const VerifyEmailView(),
      newNoteRoute: (context) => const NewNoteView()
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: AuthService.firebase().initialize(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = AuthService.firebase().currentUser;
              if (user != null) {
                if (user?.isEmailVerified ?? false) {
                  return const NotesView();
                } else {
                  return const VerifyEmailView();
                }
              } else {
                return const LoginView();
              }
            default:
              return const CircularProgressIndicator();
          }
        });
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:autentikasi/pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    runApp(const App());
  } catch (e) {
    print("Error initializing Firebase: $e");
  }
}
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPages(),
    );
  }
}

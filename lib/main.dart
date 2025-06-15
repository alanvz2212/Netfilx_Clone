import 'package:flutter/material.dart';
import 'package:netflixclone/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color.fromARGB(22, 228, 66, 25)),
      title: 'Netflix Clone',
      home: SplashScreen(),
      themeMode: ThemeMode.dark,
    );
  }
}

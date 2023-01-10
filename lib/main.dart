import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_class/routes.dart';
import 'firebase_options.dart';
import 'package:my_class/login/login_page.dart';
import 'package:my_class/themes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: appRoutes,
      theme: appTheme,
    );
  }
}


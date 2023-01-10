import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_class/routes.dart';
import 'package:my_class/form/form.dart';
import 'package:my_class/login/login_page.dart';
import 'package:my_class/services/auth.dart';
import 'package:my_class/shared/error.dart';
import 'package:my_class/shared/loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
       stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return const Center(
            child: ErrorMessage(),
          );
        } else if (snapshot.hasData) {
          return const FormScreen();
        } else {
          return const LoginScreen();
        }
      },

    );
  }
}
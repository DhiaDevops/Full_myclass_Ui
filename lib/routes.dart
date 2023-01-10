import 'package:my_class/login/login_page.dart';
import 'package:my_class/home/home.dart';
import 'package:my_class/form/form.dart';
import 'package:my_class/main.dart';
import 'package:my_class/profile/profile.dart';




var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/form': (context) => const FormScreen(),
  '/profile': (context) => const ModifyProfile(),
 
  
};

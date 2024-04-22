import 'package:flutter/material.dart';

import '../../views/screens/language.dart';
import '../../views/screens/login.dart';
import '../../views/screens/on_boarding.dart';
import '../../views/screens/sign_up.dart';
import 'class/app_route.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // '/home': (_) => const Home(),
  // '/login': (_) => const Login(),
  // 'login': (context) => const Login(),
  AppRoutes.lang: (context) => const MyLanguage(),
  AppRoutes.login: (context) => const Login(),
  AppRoutes.signup: (context) => const SignUp(),
  AppRoutes.onboarding: (context) =>  const OnBoarding(),
};

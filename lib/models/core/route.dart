import 'package:ecommerce/models/core/index.dart';
import 'package:flutter/material.dart';

import '../../views/screens/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // '/home': (_) => const Home(),
  // '/login': (_) => const Login(),
  // 'login': (context) => const Login(),
  AppRoute.login: (context) => const Login(),
};

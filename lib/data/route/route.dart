import 'package:flutter/material.dart';
import 'package:flutter_task/data/ui/login/login_screen.dart';
import 'package:flutter_task/data/ui/login/login_vm.dart';
import 'package:provider/provider.dart';

import '../ui/splash/splash_screen.dart';
import '../ui/splash/splash_vm.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
              create: (context) => SplashVm(), child: SplashScreen()),);
    case LoginScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
              create: (context) => LoginVm(), child: LoginScreen()));



    default:
      return errorRoute();
  }
}

Route<dynamic> errorRoute() {
  return MaterialPageRoute(
    builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Arggg!'),
        ),
        body: const Center(
          child: Text('Oh No! You should not be here! '),
        ),
      );
    },
  );
}
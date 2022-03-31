import 'package:flutter/material.dart';
import 'package:flutter_task/data/api_client.dart';
import 'package:get_it/get_it.dart';

import 'data/route/route.dart';

void main() async{
  GetIt.I.registerSingleton<ApiClient>(ApiClient());

  await GetIt.I.allReady();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder(),}),

      ),
      initialRoute: "/",
      onGenerateRoute: generateRoute,
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_task/data/api_client.dart';
import 'package:flutter_task/data/model/AppModel.dart';
import 'package:flutter_task/data/repo/login/login_repo.dart';
import 'package:flutter_task/data/repo/login/login_repo_imp.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'data/route/route.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerSingleton<ApiClient>(ApiClient());
  GetIt.I.registerSingleton<AppModel>(AppModel());

  GetIt.I.registerSingleton<LoginRepo>(LoginRepoImp());


  await GetIt.I.allReady();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>GetIt.I.get<AppModel>(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffF9F9F9),
          primarySwatch: Colors.blue,
          pageTransitionsTheme: const PageTransitionsTheme(builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder(),}),

        ),
        initialRoute: "/",
        onGenerateRoute: generateRoute,
      ),
    );
  }
}



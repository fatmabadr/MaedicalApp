import 'package:flutter/material.dart';
import '../presentation/resources/route_manager.dart';
class MyApp extends StatelessWidget {
  //singleTone(3 steps)
  MyApp._internal();
  static final MyApp _instance = MyApp._internal();
  factory MyApp()=>_instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.startUPRoute,

    );
  }
}

import 'package:flutter/material.dart';
import 'package:trading/presentation/res/app_routes.dart';
import 'package:trading/presentation/res/app_theme.dart';
class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);
  const MyApp._();
  static final MyApp instance = MyApp._();
  factory MyApp() => instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getApplicationTheme(),
      initialRoute: Routes.splashRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}

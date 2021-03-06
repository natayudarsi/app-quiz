import 'package:app_quiz/common/routes/routes.dart';
import 'package:app_quiz/common/routes/routing.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Routes.mainScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
      // home: ScreenGame(),
    );
  }
}
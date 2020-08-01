import 'package:app_quiz/common/routes/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: GestureDetector(
          onTap: () { 
            Navigator.of(context).pushReplacementNamed(Routes.rpsScreen);
          },
          child: Container(
            child: Text('helo'),
          ),
        ),
      ),
    );
  }

}
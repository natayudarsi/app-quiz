import 'package:app_quiz/error_screen.dart';
import 'package:app_quiz/home.dart';
import 'package:app_quiz/presentation/main_screen.dart';
import 'package:app_quiz/presentation/quiz_screen/quiz_screen.dart';
import 'package:app_quiz/presentation/rock.dart';
import 'package:app_quiz/presentation/widget/slide_transition_widget.dart';
import 'package:app_quiz/rps_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case Routes.mainScreen:
        return MaterialPageRoute<dynamic>(builder: (_) => _buildHomeScreen());
        
      case Routes.rpsScreen:
        return SlideRouteTransition(
          page: _buildRpsScreen(),
          animationTo: AnimationTo.left
        ) ;
        
      
      case Routes.soalScreen:
        return SlideRouteTransition(
          page: _buildSoalScreen(),
          animationTo: AnimationTo.left,
        );
        
    default:
      return MaterialPageRoute<dynamic>(builder: (_) => _buildErrorScreen());
    }
  }

  static Widget _buildHomeScreen() {
    return MainScreen();
  }

  static Widget _buildErrorScreen() {
    return ErrorScreen();
  }

  static Widget _buildRpsScreen() {
    return ScreenGame();
  }

  static Widget _buildSoalScreen() {
    return QuizScreen();
  }

}


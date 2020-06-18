part of 'screen_game_bloc.dart';

abstract class ScreenGameEvent extends Equatable {
  const ScreenGameEvent();
}

class SetChoice extends ScreenGameEvent {
  @override
  List<Object> get props => [];
}
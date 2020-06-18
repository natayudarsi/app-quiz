import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:equatable/equatable.dart';

part 'screen_game_event.dart';
part 'screen_game_state.dart';

@injectable
class ScreenGameBloc extends Bloc<ScreenGameEvent, ScreenGameState> {
  
  @override
  ScreenGameState get initialState => ScreenGameInitial();

  @override
  Stream<ScreenGameState> mapEventToState(
    ScreenGameEvent event
    ) async* {
      if(event is SetChoice) {
        yield SetChoiceSuccess();
      }
  }
  
}
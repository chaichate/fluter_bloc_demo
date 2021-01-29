import 'dart:async';
import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'screen2_event.dart';
part 'screen2_state.dart';

class Screen2Bloc extends Bloc<Screen2Event, Screen2state> {
  Screen2Bloc() : super(Screen2state());

  @override
  Stream<Screen2state> mapEventToState(
    Screen2Event event,
  ) async* {

    if(event is  BackgroundChange ) {

      yield state.copyWith(isSelect: !state.isSelect);

    }


  }
}

import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'screen4_event.dart';
part 'screen4_state.dart';

class Screen4Bloc extends Bloc<Screen4Event, Screen4State> {
  Screen4Bloc() : super(Screen4State());

  List<Color> colors = [Colors.red, Colors.blue, Colors.green , Colors.purple];

  @override
  Stream<Screen4State> mapEventToState(
    Screen4Event event,
  ) async* {
    if (event is BackgroundChange) {
      int idx = state.indx;
      if (idx >= colors.length) idx = 0;

      idx += 1;

      yield state.copyWith(indx: idx, color: colors[idx-1]);
    }


    if(event is BackgroundSet){
      yield state.copyWith(indx: state.indx , color: event.color ) ;
    }


  }
}

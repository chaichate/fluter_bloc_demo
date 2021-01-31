import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'screen3_event.dart';

part 'screen3_state.dart';

class Screen3Bloc extends Bloc<Screen3Event, Screen3state> {
  Screen3Bloc() : super(Screen3state());

  List<Color> colors = [Colors.red, Colors.blue, Colors.green , Colors.purple];

  @override
  Stream<Screen3state> mapEventToState(
    Screen3Event event,
  ) async* {
    if (event is BackgroundChange) {
      int idx = state.indx;
      if (idx >= colors.length) idx = 0;

      idx += 1;

      yield state.copyWith(indx: idx, color: colors[idx-1]);
    }
  }
}

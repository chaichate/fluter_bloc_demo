import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'colors_event.dart';
part 'colors_state.dart';

class ColorsBloc extends Bloc<ColorsEvent, ColorsState> {
  ColorsBloc() : super(ColorsInitial());

  @override
  Stream<ColorsState> mapEventToState(
    ColorsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

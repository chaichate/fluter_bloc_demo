part of 'screen4_bloc.dart';

abstract class Screen4Event extends Equatable {
  const Screen4Event();
}

class BackgroundChange extends Screen4Event {

  @override
  List<Object> get props =>[];
}


class BackgroundSet extends Screen4Event {
  final Color color;
  BackgroundSet({this.color});

  @override
  List<Object> get props =>[];
}
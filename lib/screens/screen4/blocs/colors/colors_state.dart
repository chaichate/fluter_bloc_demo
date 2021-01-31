part of 'colors_bloc.dart';

abstract class ColorsState extends Equatable {
  const ColorsState();
}

class ColorsInitial extends ColorsState {
  @override
  List<Object> get props => [];
}

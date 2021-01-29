part of 'screen2_bloc.dart';

class Screen2state extends Equatable {

  final bool isSelect;
  Screen2state({this.isSelect = false});


  Screen2state copyWith({
    bool isSelect,
  }) {
    return Screen2state(
      isSelect: isSelect ?? this.isSelect,
    );
  }

  @override
  List<Object> get props => [isSelect];
}

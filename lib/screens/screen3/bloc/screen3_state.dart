part of 'screen3_bloc.dart';

class Screen3state extends Equatable {

  final int indx;
  final Color color ;
  Screen3state({this.indx = 0 , this.color = Colors.black});

  Screen3state copyWith({
    int indx,
    Color color
  }) {
    return Screen3state(
      indx: indx ?? this.indx,
      color: color ?? this.color
    );
  }

  @override
  List<Object> get props => [indx , color];
}
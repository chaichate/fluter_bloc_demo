part of 'screen4_bloc.dart';

 class Screen4State extends Equatable {
  final int indx;
  final Color color ;
  Screen4State({this.indx = 0 , this.color = Colors.black});

  Screen4State copyWith({
   int indx,
   Color color
  }) {
   return Screen4State(
       indx: indx ?? this.indx,
       color: color ?? this.color
   );
  }

  @override
  List<Object> get props => [indx , color];

}


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/screens/screen3/bloc/screen3_bloc.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Screen3Bloc, Screen3state>(
        builder: (context, state) {
          return GestureDetector(
            onTap: (){
              BlocProvider.of<Screen3Bloc>(context).add(BackgroundChange());
              print('isSelect ${state.indx}');
            },
            child: Container(
              color: state.color ??  Colors.yellow,
              width: double.infinity,
              height: double.infinity,
            ),
          );
        }
    );
  }
}

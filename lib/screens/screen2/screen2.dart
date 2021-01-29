import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/screens/screen2/bloc/screen2_bloc.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Screen2Bloc, Screen2state>(
        builder: (context, state) {
        return GestureDetector(
          onTap: (){
            BlocProvider.of<Screen2Bloc>(context).add(BackgroundChange());
            print('isSelect ${state.isSelect}');
          },
          child: Container(
            color: state.isSelect ?  Colors.blue : Colors.redAccent,
            width: double.infinity,
            height: double.infinity,
          ),
        );
      }
    );
  }
}

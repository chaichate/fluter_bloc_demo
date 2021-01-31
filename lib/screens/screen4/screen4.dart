import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/screens/screen4/blocs/screen4/screen4_bloc.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 9,
          child:
              BlocBuilder<Screen4Bloc, Screen4State>(builder: (context, state) {
            return GestureDetector(
              onTap: () {
                // BlocProvider.of<Screen4Bloc>(context).add(BackgroundSet(Colors.black ));
                context.read<Screen4Bloc>().add(BackgroundChange());
              },
              child: Container(
                color: state.color ?? Colors.yellow,
                width: double.infinity,
                height: double.infinity,
              ),
            );
          }),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              GestureDetector(
                onTap : (){
                  context.read<Screen4Bloc>().add(BackgroundSet(color: Colors.pink));
                } ,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                ),
              ),
              GestureDetector(
                onTap: (){
                  context.read<Screen4Bloc>().add(BackgroundSet(color: Colors.orange));
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
              ),
              GestureDetector(
                onTap: (){
                  context.read<Screen4Bloc>().add(BackgroundSet(color: Colors.grey));
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

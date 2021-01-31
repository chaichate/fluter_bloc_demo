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
              Expanded(
                child: GestureDetector(
                  onTap : (){
                    context.read<Screen4Bloc>().add(BackgroundSet(color: Colors.cyanAccent));
                  } ,
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.cyanAccent,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    context.read<Screen4Bloc>().add(BackgroundSet(color: Colors.orange));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    context.read<Screen4Bloc>().add(BackgroundSet(color: Colors.grey));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/screens/screen2/bloc/screen2_bloc.dart';
import 'package:flutter_bloc_demo/screens/screen3/bloc/screen3_bloc.dart';
import 'package:flutter_bloc_demo/screens/screen4/blocs/colors/colors_bloc.dart';
import 'package:flutter_bloc_demo/screens/screen4/blocs/screen4/screen4_bloc.dart';
import 'package:flutter_bloc_demo/screens/screen4/screen4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<Screen2Bloc>(
          create: (BuildContext context) => Screen2Bloc(),
        ),
        BlocProvider<Screen3Bloc>(
          create: (BuildContext context) => Screen3Bloc(),
        ),
        BlocProvider<Screen4Bloc>(
          create: (BuildContext context) => Screen4Bloc(),
        ),
        BlocProvider<ColorsBloc>(
          create: (BuildContext context) => ColorsBloc(),
        ),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Screen4(),
      ),
    );
  }
}
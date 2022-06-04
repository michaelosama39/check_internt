import 'package:check_internt/bloc/bloc.dart';
import 'package:check_internt/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetTestBloc(),
        )
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

import 'package:check_internt/bloc/bloc.dart';
import 'package:check_internt/bloc/event.dart';
import 'package:check_internt/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    BlocProvider.of<GetTestBloc>(context)..add(printTestEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          BlocBuilder<GetTestBloc, GetTestState>(
            builder: (context, state) {
              if (state is GetTestLoaded) {
                return Text(state.test);
              } else if (state is GetTestLoading) {
                return Text('');
              }
            },
          ),
        ],
      ),
    ));
  }
}

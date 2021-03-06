import 'package:flutter/material.dart';
import 'package:flutter_app_counter/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(0),
        child:Home() ,
      ),
    );
  }
}

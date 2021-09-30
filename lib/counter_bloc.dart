import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_counter/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent,int> {
  CounterBloc(int initialState) : super(initialState);

  @override
  int get initialState => 0;

  @override
  Stream <int> mapEventToState(CounterEvent event) async* {
    switch(event){
      case CounterEvent.add:
      yield state +1;
      break;
      case CounterEvent.remove:
      yield state -1;
      break;
    }
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {

    super.onTransition(transition);
    //print(transition);
  }
  @override
  void onEvent(CounterEvent event) {
    // TODO: implement onEvent
    super.onEvent(event);
   // print(event);
  }
}


//bloc converts events to state
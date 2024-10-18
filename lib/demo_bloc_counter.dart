import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(BlocProvider(
      create: (context) => CounterCubit(),
      child: CounterApp(),
    ));

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('${context.watch<CounterCubit>().state}'),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          context.read<CounterCubit>().increment();
        }),
      ),
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  void reset() => emit(0);
}

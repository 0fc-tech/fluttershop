import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttershop/demo_cubit_v2/counter_cubit.dart';

void main() => runApp(BlocProvider(
      create: (context) => CounterCubit(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          //if(state is AuthSUccees){
          //  print("Je passe à la page home")
          //}
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: Text('Material App Bar'),
              ),
              //body: switch (state) {
              //  CounterBasicInitial() => Text("0"),
              //  CounterBasicChanged() => Text(state.counter.toString()),
              //},
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterCubit>().reset();
                    },
                    child: Icon(Icons.clear),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterCubit>().increment();
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ));
        },
      ),
    );
  }
}

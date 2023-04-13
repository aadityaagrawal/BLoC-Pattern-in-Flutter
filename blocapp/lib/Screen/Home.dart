import 'package:blocapp/blocs/internet_bloc/internet_bloc.dart';
import 'package:blocapp/blocs/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello")),
      body: Center(child: BlocBuilder<InternetBloc, InternetState>(
        builder: (context, state) {
          if (state is InternetGainState) {
            return Text("data");
          } else if (state is InternetLostState) {
            return Text("Lost State");
          } else {
            return Text("Loading.. ");
          }
        },
      )),
    );
  }
}

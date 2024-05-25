import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switch_slider_witt_bloc/Bloc/Switch_Slider/switch_bloc.dart';
import 'package:switch_slider_witt_bloc/UI/Switch_Slider/switch_slider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SwitchBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc Practice',
        home: SwitchSliderScreen(),
      ),
    );
  }
}

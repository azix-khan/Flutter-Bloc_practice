import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switch_slider_witt_bloc/Bloc/Switch_Slider/switch_bloc.dart';
import 'package:switch_slider_witt_bloc/Bloc/Switch_Slider/switch_event.dart';
import 'package:switch_slider_witt_bloc/Bloc/Switch_Slider/switch_state.dart';

class SwitchSliderScreen extends StatefulWidget {
  const SwitchSliderScreen({super.key});

  @override
  State<SwitchSliderScreen> createState() => _SwitchSliderScreenState();
}

class _SwitchSliderScreenState extends State<SwitchSliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch & Slider Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Notification"),
                //---> used when it is necessary to both rebuild UI and execute other reactions to state changes in the bloc

                BlocConsumer<SwitchBloc, SwitchStates>(
                    listener: (context, state) {
                  if (state.isSwitch == true) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Switched is On")));
                  } else if (state.isSwitch == false) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Switched is Off")));
                  }
                }, builder: (context, state) {
                  return Switch(
                      value: state.isSwitch,
                      onChanged: (newValue) {
                        print("Notification");
                        context
                            .read<SwitchBloc>()
                            .add(EnableOrDisableNotification());
                      });
                }),

                //---> used when we want to draw a Widget based on what is the current State
                // BlocBuilder<SwitchBloc, SwitchStates>(
                //     buildWhen: (previous, current) =>
                //         previous.isSwitch != current.isSwitch,
                //     builder: (context, state) {
                //       return Switch(
                //           value: state.isSwitch,
                //           onChanged: (newValue) {
                //             print("Notification");
                //             context
                //                 .read<SwitchBloc>()
                //                 .add(EnableOrDisableNotification());
                //           });
                //     }),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<SwitchBloc, SwitchStates>(
                buildWhen: (previous, current) =>
                    previous.slider != current.slider,
                builder: (context, state) {
                  print("Slider");
                  return Container(
                    height: 200,
                    color: Colors.red.withOpacity(state.slider),
                  );
                }),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<SwitchBloc, SwitchStates>(builder: (context, state) {
              return Slider(
                  value: state.slider,
                  onChanged: (value) {
                    context.read<SwitchBloc>().add(SliderEvent(slider: value));
                  });
            }),
          ],
        ),
      ),
    );
  }
}

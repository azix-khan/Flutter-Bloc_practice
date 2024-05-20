import 'package:bloc/bloc.dart';
import 'package:switch_slider_witt_bloc/Bloc/Switch_Slider/switch_event.dart';
import 'package:switch_slider_witt_bloc/Bloc/Switch_Slider/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<EnableOrDisableNotification>(_enableOrDisableNotification);
  }
  void _enableOrDisableNotification(
      EnableOrDisableNotification events, Emitter<SwitchState> emit) {}
}

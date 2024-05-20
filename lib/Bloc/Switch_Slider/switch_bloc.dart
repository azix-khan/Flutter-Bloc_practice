import 'package:bloc/bloc.dart';
import 'package:switch_slider_witt_bloc/Bloc/Switch_Slider/switch_event.dart';
import 'package:switch_slider_witt_bloc/Bloc/Switch_Slider/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchStates> {
  SwitchBloc() : super(SwitchStates()) {
    on<EnableOrDisableNotification>(_enableOrDisableNotification);
    on<SliderEvent>(_slider);
  }
  void _enableOrDisableNotification(
      EnableOrDisableNotification events, Emitter<SwitchStates> emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _slider(SliderEvent events, Emitter<SwitchStates> emit) {
    emit(state.copyWith(slider: events.slider));
  }
}

import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();
  @override
  List<Object?> get props => [];
}

class EnableOrDisableNotification extends SwitchEvent {}

// ignore: must_be_immutable
class SliderEvent extends SwitchEvent {
  double slider;
  SliderEvent({required this.slider});
  @override
  List<Object?> get props => [slider];
}

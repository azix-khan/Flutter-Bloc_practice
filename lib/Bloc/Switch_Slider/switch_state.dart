import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class SwitchStates extends Equatable {
  bool isSwitch;
  double slider;
  SwitchStates({this.isSwitch = false, this.slider = 1.0});

  SwitchStates copyWith({bool? isSwitch, double? slider}) {
    return SwitchStates(
      isSwitch: isSwitch ?? this.isSwitch,
      slider: slider ?? this.slider,
    );
  }

  @override
  List<Object?> get props => [isSwitch, slider];
}

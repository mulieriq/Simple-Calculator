import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

// Holds , update and persist themes selected
class OrientationCubit extends Cubit<Orientation> {
  OrientationCubit({Orientation? orientation})
      : super(orientation ?? Orientation.portrait);

// receives actions from toggle button
// and updates the theme
  void updateOrientation(Orientation orientation) {
    emit(orientation);
  }

  bool isLandscape() => state == Orientation.landscape;
}

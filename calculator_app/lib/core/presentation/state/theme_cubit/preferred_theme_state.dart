part of 'preferred_theme_cubit.dart';

@freezed
class PreferredThemeCubitState with _$PreferredThemeCubitState {
  factory PreferredThemeCubitState({
    required PreferredTheme theme,
  }) = _PreferredThemeCubitState;

  factory PreferredThemeCubitState.desaturatedBlueTheme() {
    return PreferredThemeCubitState(
      theme: PreferredTheme.desaturatedBlueTheme,
    );
  }

  factory PreferredThemeCubitState.lightGrayTheme() {
    return PreferredThemeCubitState(
      theme: PreferredTheme.lightGrayTheme,
    );
  }

  factory PreferredThemeCubitState.darkVioletTheme() {
    return PreferredThemeCubitState(
      theme: PreferredTheme.darkVioletTheme,
    );
  }
}

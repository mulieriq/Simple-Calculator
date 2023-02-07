import 'package:calculator_app/core/presentation/theme/theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'preferred_theme_cubit.freezed.dart';
part 'preferred_theme_state.dart';

class PreferredThemeCubitCubit extends HydratedCubit<PreferredThemeCubitState> {
  PreferredThemeCubitCubit({PreferredThemeCubitState? state})
      : super(state ?? PreferredThemeCubitState.desaturatedBlueTheme());

  void updateTheme(PreferredTheme theme) =>
      emit(PreferredThemeCubitState(theme: theme));

  @override
  PreferredThemeCubitState? fromJson(Map<String, dynamic> json) {
    final theme = json['theme'];

    final preferredThemes = PreferredTheme.values
        .firstWhere((preferredTheme) => preferredTheme.toString() == theme);
    return PreferredThemeCubitState(theme: preferredThemes);
  }

  @override
  Map<String, dynamic>? toJson(PreferredThemeCubitState state) {
    final theme = {'theme': state.theme.toString()};

    return theme;
  }
}

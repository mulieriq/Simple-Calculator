import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
class Status with _$Status {
  const Status._();

  const factory Status.desaturatedBlueTheme() = DesaturatedBlueTheme;

  const factory Status.lightGrayTheme() = LightGrayTheme;

  const factory Status.darkVioletTheme() = DarkVioletTheme;

  bool get isDesaturatedBlueTheme => this is DesaturatedBlueTheme;

  bool get isLightGrayTheme => this is LightGrayTheme;

  bool get isDarkVioletTheme => this is DarkVioletTheme;

  DesaturatedBlueTheme get asDesaturatedBlueTheme =>
      this as DesaturatedBlueTheme;

  LightGrayTheme get asLightGrayTheme => this as LightGrayTheme;

  DarkVioletTheme get asDarkVioletTheme => this as DarkVioletTheme;
}

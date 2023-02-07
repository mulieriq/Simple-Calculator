// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferred_theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreferredThemeCubitState {
  PreferredTheme get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreferredThemeCubitStateCopyWith<PreferredThemeCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferredThemeCubitStateCopyWith<$Res> {
  factory $PreferredThemeCubitStateCopyWith(PreferredThemeCubitState value,
          $Res Function(PreferredThemeCubitState) then) =
      _$PreferredThemeCubitStateCopyWithImpl<$Res, PreferredThemeCubitState>;
  @useResult
  $Res call({PreferredTheme theme});
}

/// @nodoc
class _$PreferredThemeCubitStateCopyWithImpl<$Res,
        $Val extends PreferredThemeCubitState>
    implements $PreferredThemeCubitStateCopyWith<$Res> {
  _$PreferredThemeCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as PreferredTheme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreferredThemeCubitStateCopyWith<$Res>
    implements $PreferredThemeCubitStateCopyWith<$Res> {
  factory _$$_PreferredThemeCubitStateCopyWith(
          _$_PreferredThemeCubitState value,
          $Res Function(_$_PreferredThemeCubitState) then) =
      __$$_PreferredThemeCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PreferredTheme theme});
}

/// @nodoc
class __$$_PreferredThemeCubitStateCopyWithImpl<$Res>
    extends _$PreferredThemeCubitStateCopyWithImpl<$Res,
        _$_PreferredThemeCubitState>
    implements _$$_PreferredThemeCubitStateCopyWith<$Res> {
  __$$_PreferredThemeCubitStateCopyWithImpl(_$_PreferredThemeCubitState _value,
      $Res Function(_$_PreferredThemeCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$_PreferredThemeCubitState(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as PreferredTheme,
    ));
  }
}

/// @nodoc

class _$_PreferredThemeCubitState implements _PreferredThemeCubitState {
  _$_PreferredThemeCubitState({required this.theme});

  @override
  final PreferredTheme theme;

  @override
  String toString() {
    return 'PreferredThemeCubitState(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferredThemeCubitState &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreferredThemeCubitStateCopyWith<_$_PreferredThemeCubitState>
      get copyWith => __$$_PreferredThemeCubitStateCopyWithImpl<
          _$_PreferredThemeCubitState>(this, _$identity);
}

abstract class _PreferredThemeCubitState implements PreferredThemeCubitState {
  factory _PreferredThemeCubitState({required final PreferredTheme theme}) =
      _$_PreferredThemeCubitState;

  @override
  PreferredTheme get theme;
  @override
  @JsonKey(ignore: true)
  _$$_PreferredThemeCubitStateCopyWith<_$_PreferredThemeCubitState>
      get copyWith => throw _privateConstructorUsedError;
}

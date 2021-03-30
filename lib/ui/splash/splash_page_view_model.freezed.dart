// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'splash_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SplashPageViewModelTearOff {
  const _$SplashPageViewModelTearOff();

  _SplashPageViewModel call({LoadingStatus status, Function getInitData}) {
    return _SplashPageViewModel(
      status: status,
      getInitData: getInitData,
    );
  }
}

// ignore: unused_element
const $SplashPageViewModel = _$SplashPageViewModelTearOff();

mixin _$SplashPageViewModel {
  LoadingStatus get status;
  Function get getInitData;

  $SplashPageViewModelCopyWith<SplashPageViewModel> get copyWith;
}

abstract class $SplashPageViewModelCopyWith<$Res> {
  factory $SplashPageViewModelCopyWith(
          SplashPageViewModel value, $Res Function(SplashPageViewModel) then) =
      _$SplashPageViewModelCopyWithImpl<$Res>;
  $Res call({LoadingStatus status, Function getInitData});
}

class _$SplashPageViewModelCopyWithImpl<$Res>
    implements $SplashPageViewModelCopyWith<$Res> {
  _$SplashPageViewModelCopyWithImpl(this._value, this._then);

  final SplashPageViewModel _value;
  // ignore: unused_field
  final $Res Function(SplashPageViewModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object getInitData = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as LoadingStatus,
      getInitData:
          getInitData == freezed ? _value.getInitData : getInitData as Function,
    ));
  }
}

abstract class _$SplashPageViewModelCopyWith<$Res>
    implements $SplashPageViewModelCopyWith<$Res> {
  factory _$SplashPageViewModelCopyWith(_SplashPageViewModel value,
          $Res Function(_SplashPageViewModel) then) =
      __$SplashPageViewModelCopyWithImpl<$Res>;
  @override
  $Res call({LoadingStatus status, Function getInitData});
}

class __$SplashPageViewModelCopyWithImpl<$Res>
    extends _$SplashPageViewModelCopyWithImpl<$Res>
    implements _$SplashPageViewModelCopyWith<$Res> {
  __$SplashPageViewModelCopyWithImpl(
      _SplashPageViewModel _value, $Res Function(_SplashPageViewModel) _then)
      : super(_value, (v) => _then(v as _SplashPageViewModel));

  @override
  _SplashPageViewModel get _value => super._value as _SplashPageViewModel;

  @override
  $Res call({
    Object status = freezed,
    Object getInitData = freezed,
  }) {
    return _then(_SplashPageViewModel(
      status: status == freezed ? _value.status : status as LoadingStatus,
      getInitData:
          getInitData == freezed ? _value.getInitData : getInitData as Function,
    ));
  }
}

class _$_SplashPageViewModel extends _SplashPageViewModel
    with DiagnosticableTreeMixin {
  const _$_SplashPageViewModel({this.status, this.getInitData}) : super._();

  @override
  final LoadingStatus status;
  @override
  final Function getInitData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashPageViewModel(status: $status, getInitData: $getInitData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SplashPageViewModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('getInitData', getInitData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashPageViewModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.getInitData, getInitData) ||
                const DeepCollectionEquality()
                    .equals(other.getInitData, getInitData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(getInitData);

  @override
  _$SplashPageViewModelCopyWith<_SplashPageViewModel> get copyWith =>
      __$SplashPageViewModelCopyWithImpl<_SplashPageViewModel>(
          this, _$identity);
}

abstract class _SplashPageViewModel extends SplashPageViewModel {
  const _SplashPageViewModel._() : super._();
  const factory _SplashPageViewModel(
      {LoadingStatus status, Function getInitData}) = _$_SplashPageViewModel;

  @override
  LoadingStatus get status;
  @override
  Function get getInitData;
  @override
  _$SplashPageViewModelCopyWith<_SplashPageViewModel> get copyWith;
}

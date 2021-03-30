// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'new_service_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewServicePageViewModelTearOff {
  const _$NewServicePageViewModelTearOff();

  _NewServicePageViewModel call(
      {LoadingStatus status, dynamic Function(Service) addNewService}) {
    return _NewServicePageViewModel(
      status: status,
      addNewService: addNewService,
    );
  }
}

// ignore: unused_element
const $NewServicePageViewModel = _$NewServicePageViewModelTearOff();

mixin _$NewServicePageViewModel {
  LoadingStatus get status;
  dynamic Function(Service) get addNewService;

  $NewServicePageViewModelCopyWith<NewServicePageViewModel> get copyWith;
}

abstract class $NewServicePageViewModelCopyWith<$Res> {
  factory $NewServicePageViewModelCopyWith(NewServicePageViewModel value,
          $Res Function(NewServicePageViewModel) then) =
      _$NewServicePageViewModelCopyWithImpl<$Res>;
  $Res call({LoadingStatus status, dynamic Function(Service) addNewService});
}

class _$NewServicePageViewModelCopyWithImpl<$Res>
    implements $NewServicePageViewModelCopyWith<$Res> {
  _$NewServicePageViewModelCopyWithImpl(this._value, this._then);

  final NewServicePageViewModel _value;
  // ignore: unused_field
  final $Res Function(NewServicePageViewModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object addNewService = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as LoadingStatus,
      addNewService: addNewService == freezed
          ? _value.addNewService
          : addNewService as dynamic Function(Service),
    ));
  }
}

abstract class _$NewServicePageViewModelCopyWith<$Res>
    implements $NewServicePageViewModelCopyWith<$Res> {
  factory _$NewServicePageViewModelCopyWith(_NewServicePageViewModel value,
          $Res Function(_NewServicePageViewModel) then) =
      __$NewServicePageViewModelCopyWithImpl<$Res>;
  @override
  $Res call({LoadingStatus status, dynamic Function(Service) addNewService});
}

class __$NewServicePageViewModelCopyWithImpl<$Res>
    extends _$NewServicePageViewModelCopyWithImpl<$Res>
    implements _$NewServicePageViewModelCopyWith<$Res> {
  __$NewServicePageViewModelCopyWithImpl(_NewServicePageViewModel _value,
      $Res Function(_NewServicePageViewModel) _then)
      : super(_value, (v) => _then(v as _NewServicePageViewModel));

  @override
  _NewServicePageViewModel get _value =>
      super._value as _NewServicePageViewModel;

  @override
  $Res call({
    Object status = freezed,
    Object addNewService = freezed,
  }) {
    return _then(_NewServicePageViewModel(
      status: status == freezed ? _value.status : status as LoadingStatus,
      addNewService: addNewService == freezed
          ? _value.addNewService
          : addNewService as dynamic Function(Service),
    ));
  }
}

class _$_NewServicePageViewModel extends _NewServicePageViewModel {
  const _$_NewServicePageViewModel({this.status, this.addNewService})
      : super._();

  @override
  final LoadingStatus status;
  @override
  final dynamic Function(Service) addNewService;

  @override
  String toString() {
    return 'NewServicePageViewModel(status: $status, addNewService: $addNewService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewServicePageViewModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.addNewService, addNewService) ||
                const DeepCollectionEquality()
                    .equals(other.addNewService, addNewService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(addNewService);

  @override
  _$NewServicePageViewModelCopyWith<_NewServicePageViewModel> get copyWith =>
      __$NewServicePageViewModelCopyWithImpl<_NewServicePageViewModel>(
          this, _$identity);
}

abstract class _NewServicePageViewModel extends NewServicePageViewModel {
  const _NewServicePageViewModel._() : super._();
  const factory _NewServicePageViewModel(
      {LoadingStatus status,
      dynamic Function(Service) addNewService}) = _$_NewServicePageViewModel;

  @override
  LoadingStatus get status;
  @override
  dynamic Function(Service) get addNewService;
  @override
  _$NewServicePageViewModelCopyWith<_NewServicePageViewModel> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'new_vehicle_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewVehiclePageViewModelTearOff {
  const _$NewVehiclePageViewModelTearOff();

  _NewVehiclePageViewModel call(
      {LoadingStatus status, dynamic Function(Vehicle) addNewVehicle}) {
    return _NewVehiclePageViewModel(
      status: status,
      addNewVehicle: addNewVehicle,
    );
  }
}

// ignore: unused_element
const $NewVehiclePageViewModel = _$NewVehiclePageViewModelTearOff();

mixin _$NewVehiclePageViewModel {
  LoadingStatus get status;
  dynamic Function(Vehicle) get addNewVehicle;

  $NewVehiclePageViewModelCopyWith<NewVehiclePageViewModel> get copyWith;
}

abstract class $NewVehiclePageViewModelCopyWith<$Res> {
  factory $NewVehiclePageViewModelCopyWith(NewVehiclePageViewModel value,
          $Res Function(NewVehiclePageViewModel) then) =
      _$NewVehiclePageViewModelCopyWithImpl<$Res>;
  $Res call({LoadingStatus status, dynamic Function(Vehicle) addNewVehicle});
}

class _$NewVehiclePageViewModelCopyWithImpl<$Res>
    implements $NewVehiclePageViewModelCopyWith<$Res> {
  _$NewVehiclePageViewModelCopyWithImpl(this._value, this._then);

  final NewVehiclePageViewModel _value;
  // ignore: unused_field
  final $Res Function(NewVehiclePageViewModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object addNewVehicle = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as LoadingStatus,
      addNewVehicle: addNewVehicle == freezed
          ? _value.addNewVehicle
          : addNewVehicle as dynamic Function(Vehicle),
    ));
  }
}

abstract class _$NewVehiclePageViewModelCopyWith<$Res>
    implements $NewVehiclePageViewModelCopyWith<$Res> {
  factory _$NewVehiclePageViewModelCopyWith(_NewVehiclePageViewModel value,
          $Res Function(_NewVehiclePageViewModel) then) =
      __$NewVehiclePageViewModelCopyWithImpl<$Res>;
  @override
  $Res call({LoadingStatus status, dynamic Function(Vehicle) addNewVehicle});
}

class __$NewVehiclePageViewModelCopyWithImpl<$Res>
    extends _$NewVehiclePageViewModelCopyWithImpl<$Res>
    implements _$NewVehiclePageViewModelCopyWith<$Res> {
  __$NewVehiclePageViewModelCopyWithImpl(_NewVehiclePageViewModel _value,
      $Res Function(_NewVehiclePageViewModel) _then)
      : super(_value, (v) => _then(v as _NewVehiclePageViewModel));

  @override
  _NewVehiclePageViewModel get _value =>
      super._value as _NewVehiclePageViewModel;

  @override
  $Res call({
    Object status = freezed,
    Object addNewVehicle = freezed,
  }) {
    return _then(_NewVehiclePageViewModel(
      status: status == freezed ? _value.status : status as LoadingStatus,
      addNewVehicle: addNewVehicle == freezed
          ? _value.addNewVehicle
          : addNewVehicle as dynamic Function(Vehicle),
    ));
  }
}

class _$_NewVehiclePageViewModel extends _NewVehiclePageViewModel {
  const _$_NewVehiclePageViewModel({this.status, this.addNewVehicle})
      : super._();

  @override
  final LoadingStatus status;
  @override
  final dynamic Function(Vehicle) addNewVehicle;

  @override
  String toString() {
    return 'NewVehiclePageViewModel(status: $status, addNewVehicle: $addNewVehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewVehiclePageViewModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.addNewVehicle, addNewVehicle) ||
                const DeepCollectionEquality()
                    .equals(other.addNewVehicle, addNewVehicle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(addNewVehicle);

  @override
  _$NewVehiclePageViewModelCopyWith<_NewVehiclePageViewModel> get copyWith =>
      __$NewVehiclePageViewModelCopyWithImpl<_NewVehiclePageViewModel>(
          this, _$identity);
}

abstract class _NewVehiclePageViewModel extends NewVehiclePageViewModel {
  const _NewVehiclePageViewModel._() : super._();
  const factory _NewVehiclePageViewModel(
      {LoadingStatus status,
      dynamic Function(Vehicle) addNewVehicle}) = _$_NewVehiclePageViewModel;

  @override
  LoadingStatus get status;
  @override
  dynamic Function(Vehicle) get addNewVehicle;
  @override
  _$NewVehiclePageViewModelCopyWith<_NewVehiclePageViewModel> get copyWith;
}

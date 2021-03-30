// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'new_client_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewClientPageViewModelTearOff {
  const _$NewClientPageViewModelTearOff();

  _NewServicePageViewModel call(
      {LoadingStatus status, dynamic Function(Client) addNewClient}) {
    return _NewServicePageViewModel(
      status: status,
      addNewClient: addNewClient,
    );
  }
}

// ignore: unused_element
const $NewClientPageViewModel = _$NewClientPageViewModelTearOff();

mixin _$NewClientPageViewModel {
  LoadingStatus get status;
  dynamic Function(Client) get addNewClient;

  $NewClientPageViewModelCopyWith<NewClientPageViewModel> get copyWith;
}

abstract class $NewClientPageViewModelCopyWith<$Res> {
  factory $NewClientPageViewModelCopyWith(NewClientPageViewModel value,
          $Res Function(NewClientPageViewModel) then) =
      _$NewClientPageViewModelCopyWithImpl<$Res>;
  $Res call({LoadingStatus status, dynamic Function(Client) addNewClient});
}

class _$NewClientPageViewModelCopyWithImpl<$Res>
    implements $NewClientPageViewModelCopyWith<$Res> {
  _$NewClientPageViewModelCopyWithImpl(this._value, this._then);

  final NewClientPageViewModel _value;
  // ignore: unused_field
  final $Res Function(NewClientPageViewModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object addNewClient = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as LoadingStatus,
      addNewClient: addNewClient == freezed
          ? _value.addNewClient
          : addNewClient as dynamic Function(Client),
    ));
  }
}

abstract class _$NewServicePageViewModelCopyWith<$Res>
    implements $NewClientPageViewModelCopyWith<$Res> {
  factory _$NewServicePageViewModelCopyWith(_NewServicePageViewModel value,
          $Res Function(_NewServicePageViewModel) then) =
      __$NewServicePageViewModelCopyWithImpl<$Res>;
  @override
  $Res call({LoadingStatus status, dynamic Function(Client) addNewClient});
}

class __$NewServicePageViewModelCopyWithImpl<$Res>
    extends _$NewClientPageViewModelCopyWithImpl<$Res>
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
    Object addNewClient = freezed,
  }) {
    return _then(_NewServicePageViewModel(
      status: status == freezed ? _value.status : status as LoadingStatus,
      addNewClient: addNewClient == freezed
          ? _value.addNewClient
          : addNewClient as dynamic Function(Client),
    ));
  }
}

class _$_NewServicePageViewModel extends _NewServicePageViewModel {
  const _$_NewServicePageViewModel({this.status, this.addNewClient})
      : super._();

  @override
  final LoadingStatus status;
  @override
  final dynamic Function(Client) addNewClient;

  @override
  String toString() {
    return 'NewClientPageViewModel(status: $status, addNewClient: $addNewClient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewServicePageViewModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.addNewClient, addNewClient) ||
                const DeepCollectionEquality()
                    .equals(other.addNewClient, addNewClient)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(addNewClient);

  @override
  _$NewServicePageViewModelCopyWith<_NewServicePageViewModel> get copyWith =>
      __$NewServicePageViewModelCopyWithImpl<_NewServicePageViewModel>(
          this, _$identity);
}

abstract class _NewServicePageViewModel extends NewClientPageViewModel {
  const _NewServicePageViewModel._() : super._();
  const factory _NewServicePageViewModel(
      {LoadingStatus status,
      dynamic Function(Client) addNewClient}) = _$_NewServicePageViewModel;

  @override
  LoadingStatus get status;
  @override
  dynamic Function(Client) get addNewClient;
  @override
  _$NewServicePageViewModelCopyWith<_NewServicePageViewModel> get copyWith;
}

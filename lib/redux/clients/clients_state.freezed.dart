// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'clients_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ClientsStateTearOff {
  const _$ClientsStateTearOff();

  _ClientsState call(
      {LoadingStatus loadingStatus, List<Client> clients, dynamic clientId}) {
    return _ClientsState(
      loadingStatus: loadingStatus,
      clients: clients,
      clientId: clientId,
    );
  }
}

// ignore: unused_element
const $ClientsState = _$ClientsStateTearOff();

mixin _$ClientsState {
  LoadingStatus get loadingStatus;
  List<Client> get clients;
  dynamic get clientId;

  $ClientsStateCopyWith<ClientsState> get copyWith;
}

abstract class $ClientsStateCopyWith<$Res> {
  factory $ClientsStateCopyWith(
          ClientsState value, $Res Function(ClientsState) then) =
      _$ClientsStateCopyWithImpl<$Res>;
  $Res call(
      {LoadingStatus loadingStatus, List<Client> clients, dynamic clientId});
}

class _$ClientsStateCopyWithImpl<$Res> implements $ClientsStateCopyWith<$Res> {
  _$ClientsStateCopyWithImpl(this._value, this._then);

  final ClientsState _value;
  // ignore: unused_field
  final $Res Function(ClientsState) _then;

  @override
  $Res call({
    Object loadingStatus = freezed,
    Object clients = freezed,
    Object clientId = freezed,
  }) {
    return _then(_value.copyWith(
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus as LoadingStatus,
      clients: clients == freezed ? _value.clients : clients as List<Client>,
      clientId: clientId == freezed ? _value.clientId : clientId as dynamic,
    ));
  }
}

abstract class _$ClientsStateCopyWith<$Res>
    implements $ClientsStateCopyWith<$Res> {
  factory _$ClientsStateCopyWith(
          _ClientsState value, $Res Function(_ClientsState) then) =
      __$ClientsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoadingStatus loadingStatus, List<Client> clients, dynamic clientId});
}

class __$ClientsStateCopyWithImpl<$Res> extends _$ClientsStateCopyWithImpl<$Res>
    implements _$ClientsStateCopyWith<$Res> {
  __$ClientsStateCopyWithImpl(
      _ClientsState _value, $Res Function(_ClientsState) _then)
      : super(_value, (v) => _then(v as _ClientsState));

  @override
  _ClientsState get _value => super._value as _ClientsState;

  @override
  $Res call({
    Object loadingStatus = freezed,
    Object clients = freezed,
    Object clientId = freezed,
  }) {
    return _then(_ClientsState(
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus as LoadingStatus,
      clients: clients == freezed ? _value.clients : clients as List<Client>,
      clientId: clientId == freezed ? _value.clientId : clientId as dynamic,
    ));
  }
}

class _$_ClientsState implements _ClientsState {
  const _$_ClientsState({this.loadingStatus, this.clients, this.clientId});

  @override
  final LoadingStatus loadingStatus;
  @override
  final List<Client> clients;
  @override
  final dynamic clientId;

  @override
  String toString() {
    return 'ClientsState(loadingStatus: $loadingStatus, clients: $clients, clientId: $clientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClientsState &&
            (identical(other.loadingStatus, loadingStatus) ||
                const DeepCollectionEquality()
                    .equals(other.loadingStatus, loadingStatus)) &&
            (identical(other.clients, clients) ||
                const DeepCollectionEquality()
                    .equals(other.clients, clients)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loadingStatus) ^
      const DeepCollectionEquality().hash(clients) ^
      const DeepCollectionEquality().hash(clientId);

  @override
  _$ClientsStateCopyWith<_ClientsState> get copyWith =>
      __$ClientsStateCopyWithImpl<_ClientsState>(this, _$identity);
}

abstract class _ClientsState implements ClientsState {
  const factory _ClientsState(
      {LoadingStatus loadingStatus,
      List<Client> clients,
      dynamic clientId}) = _$_ClientsState;

  @override
  LoadingStatus get loadingStatus;
  @override
  List<Client> get clients;
  @override
  dynamic get clientId;
  @override
  _$ClientsStateCopyWith<_ClientsState> get copyWith;
}

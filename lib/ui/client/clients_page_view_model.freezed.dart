// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'clients_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ClientsPageViewModelTearOff {
  const _$ClientsPageViewModelTearOff();

  _ClientsPageViewModel call(
      {LoadingStatus status,
      List<Client> clients,
      Function addNewClient,
      dynamic Function(int) getVehiclesById,
      Function refreshClients}) {
    return _ClientsPageViewModel(
      status: status,
      clients: clients,
      addNewClient: addNewClient,
      getVehiclesById: getVehiclesById,
      refreshClients: refreshClients,
    );
  }
}

// ignore: unused_element
const $ClientsPageViewModel = _$ClientsPageViewModelTearOff();

mixin _$ClientsPageViewModel {
  LoadingStatus get status;
  List<Client> get clients;
  Function get addNewClient;
  dynamic Function(int) get getVehiclesById;
  Function get refreshClients;

  $ClientsPageViewModelCopyWith<ClientsPageViewModel> get copyWith;
}

abstract class $ClientsPageViewModelCopyWith<$Res> {
  factory $ClientsPageViewModelCopyWith(ClientsPageViewModel value,
          $Res Function(ClientsPageViewModel) then) =
      _$ClientsPageViewModelCopyWithImpl<$Res>;
  $Res call(
      {LoadingStatus status,
      List<Client> clients,
      Function addNewClient,
      dynamic Function(int) getVehiclesById,
      Function refreshClients});
}

class _$ClientsPageViewModelCopyWithImpl<$Res>
    implements $ClientsPageViewModelCopyWith<$Res> {
  _$ClientsPageViewModelCopyWithImpl(this._value, this._then);

  final ClientsPageViewModel _value;
  // ignore: unused_field
  final $Res Function(ClientsPageViewModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object clients = freezed,
    Object addNewClient = freezed,
    Object getVehiclesById = freezed,
    Object refreshClients = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as LoadingStatus,
      clients: clients == freezed ? _value.clients : clients as List<Client>,
      addNewClient: addNewClient == freezed
          ? _value.addNewClient
          : addNewClient as Function,
      getVehiclesById: getVehiclesById == freezed
          ? _value.getVehiclesById
          : getVehiclesById as dynamic Function(int),
      refreshClients: refreshClients == freezed
          ? _value.refreshClients
          : refreshClients as Function,
    ));
  }
}

abstract class _$ClientsPageViewModelCopyWith<$Res>
    implements $ClientsPageViewModelCopyWith<$Res> {
  factory _$ClientsPageViewModelCopyWith(_ClientsPageViewModel value,
          $Res Function(_ClientsPageViewModel) then) =
      __$ClientsPageViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoadingStatus status,
      List<Client> clients,
      Function addNewClient,
      dynamic Function(int) getVehiclesById,
      Function refreshClients});
}

class __$ClientsPageViewModelCopyWithImpl<$Res>
    extends _$ClientsPageViewModelCopyWithImpl<$Res>
    implements _$ClientsPageViewModelCopyWith<$Res> {
  __$ClientsPageViewModelCopyWithImpl(
      _ClientsPageViewModel _value, $Res Function(_ClientsPageViewModel) _then)
      : super(_value, (v) => _then(v as _ClientsPageViewModel));

  @override
  _ClientsPageViewModel get _value => super._value as _ClientsPageViewModel;

  @override
  $Res call({
    Object status = freezed,
    Object clients = freezed,
    Object addNewClient = freezed,
    Object getVehiclesById = freezed,
    Object refreshClients = freezed,
  }) {
    return _then(_ClientsPageViewModel(
      status: status == freezed ? _value.status : status as LoadingStatus,
      clients: clients == freezed ? _value.clients : clients as List<Client>,
      addNewClient: addNewClient == freezed
          ? _value.addNewClient
          : addNewClient as Function,
      getVehiclesById: getVehiclesById == freezed
          ? _value.getVehiclesById
          : getVehiclesById as dynamic Function(int),
      refreshClients: refreshClients == freezed
          ? _value.refreshClients
          : refreshClients as Function,
    ));
  }
}

class _$_ClientsPageViewModel extends _ClientsPageViewModel
    with DiagnosticableTreeMixin {
  const _$_ClientsPageViewModel(
      {this.status,
      this.clients,
      this.addNewClient,
      this.getVehiclesById,
      this.refreshClients})
      : super._();

  @override
  final LoadingStatus status;
  @override
  final List<Client> clients;
  @override
  final Function addNewClient;
  @override
  final dynamic Function(int) getVehiclesById;
  @override
  final Function refreshClients;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientsPageViewModel(status: $status, clients: $clients, addNewClient: $addNewClient, getVehiclesById: $getVehiclesById, refreshClients: $refreshClients)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientsPageViewModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('clients', clients))
      ..add(DiagnosticsProperty('addNewClient', addNewClient))
      ..add(DiagnosticsProperty('getVehiclesById', getVehiclesById))
      ..add(DiagnosticsProperty('refreshClients', refreshClients));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClientsPageViewModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.clients, clients) ||
                const DeepCollectionEquality()
                    .equals(other.clients, clients)) &&
            (identical(other.addNewClient, addNewClient) ||
                const DeepCollectionEquality()
                    .equals(other.addNewClient, addNewClient)) &&
            (identical(other.getVehiclesById, getVehiclesById) ||
                const DeepCollectionEquality()
                    .equals(other.getVehiclesById, getVehiclesById)) &&
            (identical(other.refreshClients, refreshClients) ||
                const DeepCollectionEquality()
                    .equals(other.refreshClients, refreshClients)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(clients) ^
      const DeepCollectionEquality().hash(addNewClient) ^
      const DeepCollectionEquality().hash(getVehiclesById) ^
      const DeepCollectionEquality().hash(refreshClients);

  @override
  _$ClientsPageViewModelCopyWith<_ClientsPageViewModel> get copyWith =>
      __$ClientsPageViewModelCopyWithImpl<_ClientsPageViewModel>(
          this, _$identity);
}

abstract class _ClientsPageViewModel extends ClientsPageViewModel {
  const _ClientsPageViewModel._() : super._();
  const factory _ClientsPageViewModel(
      {LoadingStatus status,
      List<Client> clients,
      Function addNewClient,
      dynamic Function(int) getVehiclesById,
      Function refreshClients}) = _$_ClientsPageViewModel;

  @override
  LoadingStatus get status;
  @override
  List<Client> get clients;
  @override
  Function get addNewClient;
  @override
  dynamic Function(int) get getVehiclesById;
  @override
  Function get refreshClients;
  @override
  _$ClientsPageViewModelCopyWith<_ClientsPageViewModel> get copyWith;
}

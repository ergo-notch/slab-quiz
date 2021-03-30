import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:slabs_quiz/app/app_colors.dart';
import 'package:slabs_quiz/app/app_text_styles.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/data/models/vehicle/vehicle_model.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/ui/common/custom_button.dart';
import 'package:slabs_quiz/ui/common/custom_scaffold.dart';
import 'package:slabs_quiz/ui/common/platform_adaptative.dart';
import 'package:slabs_quiz/ui/common/text_fields.dart';
import 'package:slabs_quiz/ui/utils/validator_utils.dart';
import 'package:slabs_quiz/ui/vehicle/new_vehicle/new_vehicle_page_view_model.dart';

class NewVehiclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, NewVehiclePageViewModel>(
        distinct: true,
        converter: (store) => NewVehiclePageViewModel.fromStore(store),
        builder: (_, viewModel) => NewVehiclePageContent(viewModel));
  }
}

class NewVehiclePageContent extends StatefulWidget {
  NewVehiclePageContent(this.viewModel);

  final NewVehiclePageViewModel viewModel;

  @override
  _NewVehiclePageContentState createState() {
    return _NewVehiclePageContentState();
  }
}

class _NewVehiclePageContentState extends State<NewVehiclePageContent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final GlobalKey<FormFieldState<String>> _manufacturerFieldKey =
      GlobalKey<FormFieldState<String>>();

  final GlobalKey<FormFieldState<String>> _modelFieldKey =
      GlobalKey<FormFieldState<String>>();

  final GlobalKey<FormFieldState<String>> _yearFieldKey =
      GlobalKey<FormFieldState<String>>();

  final _modelFocus = FocusNode();
  final _yearFocus = FocusNode();

  TextEditingController _manufacturerController;
  TextEditingController _modelController;
  TextEditingController _yearController;

  ScrollController _scrollController;

  @override
  void initState() {
    _manufacturerController = TextEditingController();
    _modelController = TextEditingController();
    _yearController = TextEditingController();
    _scrollController = ScrollController();

    super.initState();
  }

  bool _autoValidate = false;

  bool _handleSubmitted() {
    final FormState form = _formKey.currentState;
    if (!form.validate()) {
      _autoValidate = true; // Start validating on every change.
      return false;
    } else {
      // Every of the data in the form are valid at this point
      form.save();
      return true;
    }
  }

  String _validateField(String value) {
    return ValidatorUtils.validateField(context, value);
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildHeader() {
      return Container(
          alignment: Alignment.centerLeft,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                    onTap: () => ExtendedNavigator.rootNavigator.pop(),
                    child: Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Icon(Icons.keyboard_arrow_left,
                            color: AppColors.primaryColor))),
                SizedBox(height: 10.0),
                Text('Agrega un nuevo vehículo',
                    style: AppTextStyles.title4.copyWith(fontSize: 28.0)),
                SizedBox(height: 30.0),
              ]));
    }

    Widget _buildInputs() {
      return Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            CustomTextField(
                fieldKey: _manufacturerFieldKey,
                node: null,
                autoFocus: true,
                controller: _manufacturerController,
                // labelText: messages.signUpName,
                labelText: 'Marca',
                validator: _validateField,
                nextNode: _modelFocus),
            CustomTextField(
              fieldKey: _modelFieldKey,
              node: _modelFocus,
              controller: _modelController,
              labelText: 'Modelo',
              validator: _validateField,
              nextNode: _yearFocus,
            ),
            CustomTextField(
              fieldKey: _yearFieldKey,
              node: _yearFocus,
              controller: _yearController,
              labelText: 'Año',
              validator: _validateField,
            ),
          ]));
    }

    Widget _buildSNewServiceButton() {
      return PrimaryButton(
          text: 'Agregar cliente',
          action: () {
            if (_handleSubmitted()) {
              Vehicle vehicle = Vehicle(
                manufacturer: _manufacturerFieldKey.currentState.value,
                model: _modelFieldKey.currentState.value,
                year: _yearFieldKey.currentState.value,
                imgUrl: '',
              );
              widget.viewModel.addNewVehicle(vehicle);
            }
          },
          enable: widget.viewModel.status != LoadingStatus.loading);
    }

    Widget content() => Form(
        key: _formKey,
        autovalidate: _autoValidate,
        child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Expanded(
                  child: ListView(children: <Widget>[
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: _buildHeader()),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: _buildInputs()),
              ])),
            ])));

    if (_scrollController.hasClients)
      _scrollController.animateTo(
          _scrollController.position.maxScrollExtent -
              (MediaQuery.of(context).size.height / 3),
          duration: Duration(microseconds: 200),
          curve: Curves.ease);

    return CustomScaffold(
        bottomNavigationBar: Container(
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(children: <Widget>[
                        _buildSNewServiceButton(),
                        SizedBox(height: 20.0),
                      ])),
                ])),
        body: Stack(alignment: Alignment.topCenter, children: <Widget>[
          content(),
          getProgressIndicator(context, widget.viewModel.status),
        ]));
  }
}

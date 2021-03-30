import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:slabs_quiz/app/app_colors.dart';
import 'package:slabs_quiz/app/app_text_styles.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/data/models/client/client_model.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/ui/client/new_client/new_client_page_view_model.dart';
import 'package:slabs_quiz/ui/common/custom_button.dart';
import 'package:slabs_quiz/ui/common/custom_scaffold.dart';
import 'package:slabs_quiz/ui/common/platform_adaptative.dart';
import 'package:slabs_quiz/ui/common/text_fields.dart';
import 'package:slabs_quiz/ui/utils/keyboard_actions.dart';
import 'package:slabs_quiz/ui/utils/validator_utils.dart';

class NewClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, NewClientPageViewModel>(
        distinct: true,
        converter: (store) => NewClientPageViewModel.fromStore(store),
        builder: (_, viewModel) => NewClientPageContent(viewModel));
  }
}

class NewClientPageContent extends StatefulWidget {
  NewClientPageContent(this.viewModel);

  final NewClientPageViewModel viewModel;

  @override
  _NewClientPageContentState createState() {
    return _NewClientPageContentState();
  }
}

class _NewClientPageContentState extends State<NewClientPageContent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final GlobalKey<FormFieldState<String>> _nameFieldKey =
      GlobalKey<FormFieldState<String>>();

  final GlobalKey<FormFieldState<String>> _lastNameFieldKey =
      GlobalKey<FormFieldState<String>>();

  final _lastNameFocus = FocusNode();

  TextEditingController _nameController;
  TextEditingController _lastNameController;

  ScrollController _scrollController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _lastNameController = TextEditingController();
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

  String _validateName(String value) {
    return ValidatorUtils.validateName(context, value);
  }

  String _validateLastName(String value) {
    return ValidatorUtils.validateLastName(context, value);
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
                Text('Agrega un nuevo cliente',
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
                fieldKey: _nameFieldKey,
                node: null,
                autoFocus: true,
                controller: _nameController,
                labelText: 'Nombre',
                validator: _validateName,
                nextNode: _lastNameFocus),
            CustomTextField(
              fieldKey: _lastNameFieldKey,
              node: _lastNameFocus,
              controller: _lastNameController,
              labelText: 'Apellido',
              validator: _validateLastName,
            ),
          ]));
    }

    Widget _buildSNewServiceButton() {
      return PrimaryButton(
          text: 'Agregar cliente',
          action: () {
            if (_handleSubmitted()) {
              Client client = Client(
                firstName: _nameFieldKey.currentState.value,
                lastName: _lastNameFieldKey.currentState.value,
                // email: _emailFieldKey.currentState.value,
              );
              widget.viewModel.addNewClient(client);
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

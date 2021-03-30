import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:slabs_quiz/app/app_colors.dart';
import 'package:slabs_quiz/app/app_text_styles.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/data/models/service/service_model.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/ui/common/custom_button.dart';
import 'package:slabs_quiz/ui/common/custom_scaffold.dart';
import 'package:slabs_quiz/ui/common/platform_adaptative.dart';
import 'package:slabs_quiz/ui/common/text_fields.dart';
import 'package:slabs_quiz/ui/service/new_service/new_service_page_view_model.dart';
import 'package:slabs_quiz/ui/utils/keyboard_actions.dart';
import 'package:slabs_quiz/ui/utils/validator_utils.dart';

class NewServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, NewServicePageViewModel>(
        distinct: true,
        converter: (store) => NewServicePageViewModel.fromStore(store),
        builder: (_, viewModel) => NewServicePageContent(viewModel));
  }
}

class NewServicePageContent extends StatefulWidget {
  NewServicePageContent(this.viewModel);

  final NewServicePageViewModel viewModel;

  @override
  _NewServicePageContentState createState() {
    return _NewServicePageContentState();
  }
}

class _NewServicePageContentState extends State<NewServicePageContent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final GlobalKey<FormFieldState<String>> _descriptionFieldKey =
      GlobalKey<FormFieldState<String>>();

  final GlobalKey<FormFieldState<String>> _phoneFieldKey =
      GlobalKey<FormFieldState<String>>();

  final _phoneFocus = FocusNode();

  bool nextFlag = false;

  TextEditingController _descriptionController;

  TextEditingController _dateController = TextEditingController();

  TextEditingController _phoneController;
  ScrollController _scrollController;

  @override
  void initState() {
    _descriptionController = TextEditingController();
    _phoneController = TextEditingController();
    _phoneController = TextEditingController();
    _dateController = TextEditingController();
    _scrollController = ScrollController();

    var listener = () {
      if (_descriptionController.value.text.isNotEmpty &&
          _dateController.value.text.isNotEmpty &&
          _phoneController.value.text.isNotEmpty)
        setState(() {
          nextFlag = true;
        });
      else
        setState(() {
          nextFlag = false;
        });
    };

    _descriptionController.addListener(listener);
    _phoneController.addListener(listener);
    _dateController.addListener(listener);
    _country = 'MX';

    super.initState();
  }

  bool _autoValidate = false;

  String _country;
  CountryCode _countryPhone;

  void _onCountryChange(CountryCode countryCode) {
    _countryPhone = countryCode;
  }

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

  String _validatePhoneNumber(String value) {
    return ValidatorUtils.validatePhoneNumber(context, value);
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
                Text('Agrega un nuevo servicio',
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
                fieldKey: _descriptionFieldKey,
                node: null,
                autoFocus: true,
                controller: _descriptionController,
                labelText: 'Descripción del servicio',
                validator: _validateField,
                nextNode: _phoneFocus),
            Row(children: <Widget>[
              Container(
                  height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: AppColors.darkColor))),
                  child: CountryCodePicker(
                      onChanged: _onCountryChange,
                      onInit: _onCountryChange,
                      initialSelection: _country,
                      favorite: [_country],
                      alignLeft: true,
                      showCountryOnly: true,
                      showOnlyCountryWhenClosed: false)),
              SizedBox(width: 5.0),
              Expanded(
                  child: CustomTextField(
                fieldKey: _phoneFieldKey,
                node: _phoneFocus,
                labelText: 'Número de contacto',
                keyboardType: TextInputType.number,
                validator: _validatePhoneNumber,
                controller: _phoneController,
              )),
            ]),
            DateTimePicker(
              controller: _dateController,
              type: DateTimePickerType.dateTimeSeparate,
              dateMask: 'd MMM, yyyy',
              firstDate: DateTime(2021),
              lastDate: DateTime(2100),
              icon: Icon(Icons.event),
              dateLabelText: 'Fecha del servicio',
              timeLabelText: "Especifica una hora",
              onChanged: (val) => print(val),
              validator: (val) {
                print(val);
              },
              onSaved: (val) => print(val),
            )
          ]));
    }

    Widget _buildSNewServiceButton() {
      return PrimaryButton(
          text: 'Agregar servicio',
          action: () {
            if (_handleSubmitted()) {
              Service service = Service(
                  serviceName: _descriptionFieldKey.currentState.value,
                  countryCode: (_countryPhone?.dialCode ?? '+52'),
                  phoneNumber: _phoneFieldKey.currentState.value,
                  date: _dateController.text);
              widget.viewModel.addNewService(service);
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
        body: FormKeyboardActions(
            keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
            keyboardBarColor: Colors.grey[200],
            nextFocus: false,
            actions: [
              KeyboardAction(focusNode: _phoneFocus),
            ],
            child: Stack(alignment: Alignment.topCenter, children: <Widget>[
              content(),
              getProgressIndicator(context, widget.viewModel.status),
            ])));
  }
}

import 'package:flutter/material.dart';
import 'package:slabs_quiz/ui/common/custom_toast.dart';

class ErrorAction {
  const ErrorAction();

  Widget showErrorToast({String msg}) =>
      CustomToast(msg: msg, type: CustomToast.ERROR);

  Widget showSuccessToast({String msg}) =>
      CustomToast(msg: msg, type: CustomToast.SUCCESS);
}

class SaveToastAction {
  const SaveToastAction(this.error);

  final Widget error;
}

class DeleteToastAction {}

import 'package:flutter/material.dart';
import 'package:slabs_quiz/ui/utils/string_utils.dart';

class ValidatorUtils {
  static String validateField(BuildContext context, String value) {
    if (value == null || value.isEmpty) return 'Campo vacío';
    return null;
  }

  static String validatePhoneNumber(BuildContext context, String value) {
    if (value.isEmpty) return 'Campo vacío';
    final RegExp regex = RegExp(r'^\d\d\d\d\d\d\d\d\d\d$');
    if (!regex.hasMatch(value)) return 'Ingresa un número válido';
    return null;
  }

  static String validateName(BuildContext context, String value) {
    if (value.isEmpty) return 'Campo vacío';
    final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value
        .replaceAll('á', 'a')
        .replaceAll('é', 'e')
        .replaceAll('í', 'i')
        .replaceAll('ó', 'o')
        .replaceAll('ú', 'u')
        .replaceAll('Á', 'A')
        .replaceAll('É', 'E')
        .replaceAll('Ó', 'O')
        .replaceAll('Í', 'I')
        .replaceAll('Ú', 'U'))) return 'Ingresa un nombre válido';

    return null;
  }

  static String validateLastName(BuildContext context, String value) {
    if (value.isEmpty) return 'Campo vacío';
    final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value
        .replaceAll('á', 'a')
        .replaceAll('é', 'e')
        .replaceAll('í', 'i')
        .replaceAll('ó', 'o')
        .replaceAll('ú', 'u')
        .replaceAll('Á', 'A')
        .replaceAll('É', 'E')
        .replaceAll('Ó', 'O')
        .replaceAll('Í', 'I')
        .replaceAll('Ú', 'U'))) return 'Ingresa un apellido válido';

    return null;
  }

  static String validateDate(BuildContext context, String value) {
    var d = StringUtils.convertToDate(value);
    if (value.isEmpty)
      return null;
    else if (d != null && d.isAfter(DateTime.now()))
      return null;
    else
      return 'Ingresa una fecha válida';
  }

  static String validateDateTime(BuildContext context, String value) {
    var d = StringUtils.convertToDateTime(value);
    if (value.isEmpty)
      return null;
    else if (d != null &&
        d.isBefore(DateTime.now()) &&
        d.isAfter(DateTime((DateTime.now().year ?? 2000) - 100,
            DateTime.now().month, DateTime.now().day)))
      return null;
    else {
      return 'Ingresa una fecha válida';
    }
  }
}

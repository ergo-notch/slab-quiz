import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StringUtils {
  static String capitalize(String input) {
    if (input == null) {
      throw ArgumentError("string: $input");
    }
    if (input.length == 0) {
      return input;
    }
    return input[0].toUpperCase() + input.substring(1);
  }

  static String firstName(String input) {
    var _input = input ?? '';
    if ((_input.split(" ")).length > 0) return capitalize(_input.split(" ")[0]);
    return "";
  }

  static String getCleanString(String str) {
    var result = '';
    var tmp = '';

    (str ?? '').split('').forEach((f) {
      if (f != tmp) {
        result += f;
        tmp = f;
      }
    });

    return result;
  }

  static DateTime convertToDate(String input) {
    try {
      var replaced = false;
      if (input.contains('/')) {
        input = input.replaceAll('/', '-');
        replaced = true;
      }

      var tmp = input.split("-");
      if (tmp.length == 3) {
        if (replaced) tmp = tmp.reversed.toList();
        var date = tmp.join('-');
        var d = DateFormat('yyyy-MM-dd').parse(date);
        return d;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  static DateTime convertToDateTime(String input) {
    try {
      var d = DateFormat('yyyy-MM-dd HH:mm').parse(input);
      return d;
    } catch (e) {
      print(e);
      return DateTime(DateTime.now().year + 100);
    }
  }

  static String numberFormat(dynamic number, String pattern) {
    try {
      var result = NumberFormat(pattern ?? '###,###').format(number);
      String removeLeadZero(String number) {
        var newNumber = number.substring(1);
        if (newNumber.startsWith('0')) {
          return removeLeadZero(newNumber);
        } else {
          return newNumber;
        }
      }

      return result.startsWith('0') && result != '0'
          ? removeLeadZero(result)
          : result;
    } catch (e) {
      return NumberFormat(pattern ?? '###,###').format(0);
    }
  }

  static String getIsoDate(String date) {
    if (date != null) {
      if (date.contains('.'))
        return date.split('.')[0] +
            '.' +
            date.split('.')[1].substring(0, 6) +
            date.substring(date.length - 1, date.length);
      else
        return date;
    } else
      return null;
  }

  static String dateFormat(String date) {
    try {
      return DateFormat('dd MMM yyyy hh:mm a', getLocal())
          .format(DateTime.parse(getIsoDate(date)).toLocal());
    } catch (e) {
      return DateFormat('dd MMM yyyy hh:mm a').format(DateTime(1990));
    }
  }

  static String distanceFormat(double distance) {
    try {
      if (distance != null && distance != -1)
        return '${distance.toStringAsFixed(1)} Km';
      else
        return '';
    } catch (e) {
      return '';
    }
  }

  static String getLocal() {
    String locale = "es_ES";
    return locale;
  }
}

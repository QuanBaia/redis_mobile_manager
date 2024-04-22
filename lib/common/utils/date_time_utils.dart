import 'dart:convert';

class DateTimeUtils {


  static dynamic dateTimeEncode(dynamic value){
    if(value is DateTime) {
      return value.toIso8601String();
    }
    return const JsonEncoder().convert(value);
  }


}

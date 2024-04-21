import 'package:flutter/material.dart';
import 'package:moment_dart/moment_dart.dart';

class DateLocal {
  static MomentLocalization getLocalization(Locale? local) {
    if (local == null) {
      return MomentLocalizations.enUS();
    }
    switch (local.languageCode) {
      case 'en':
        return MomentLocalizations.enUS();
      case 'zh':
        return MomentLocalizations.zhCn();
      case 'ja':
        return MomentLocalizations.jaJp();
      default:
        return MomentLocalizations.enUS();
    }
  }
}

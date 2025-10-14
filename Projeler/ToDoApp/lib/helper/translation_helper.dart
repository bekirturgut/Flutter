import 'package:easy_localization/easy_localization.dart' as LocaleType;
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/cupertino.dart';

class TranslationHelper {
  TranslationHelper._();

  static getDeviceLanguage(BuildContext context) {
    var _deviceLanguage = context.deviceLocale.countryCode!.toLowerCase();
    print(_deviceLanguage);
    switch (_deviceLanguage) {
      case 'tr':
        return LocaleType.tr;
    }
  }
}

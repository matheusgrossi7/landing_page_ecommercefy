import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';

class AppLocales {
  static List<Locale> supportedLocales = const [
    Locale("pt", "BR"),
  ];

  static Locale getSysLocale() {
    String sysLocaleName = Platform.localeName;
    String localeNameSeparator = kIsWeb ? "-" : "_";
    List<String> localeNameSlices = sysLocaleName.split(localeNameSeparator);
    if (localeNameSlices.length > 1) {
      return Locale(
        localeNameSlices[0],
        localeNameSlices[1].split(".")[0],
      );
    } else {
      return Locale(sysLocaleName.split(".")[0]);
    }
  }

  static Locale initialLocale() {
    Locale sysLocale = getSysLocale();
    for (Locale supportedLocale in supportedLocales) {
      if (sysLocale.toLanguageTag() == supportedLocale.toLanguageTag()) {
        return sysLocale;
      }
    }
    return supportedLocales[0];
  }

  static String getLocaleName(String localeLanguageTag) {
    String localeNameSeparator = kIsWeb ? "-" : "_";
    List<String> localeNameSlices =
        localeLanguageTag.split(localeNameSeparator);
    if (localeNameSlices.length > 1) {
      localeLanguageTag = localeNameSlices[0] +
          localeNameSeparator +
          localeNameSlices[1].split(".")[0];
    } else {
      localeLanguageTag = localeNameSlices[0].split(".")[0];
    }
    return '${localeLanguageTag.replaceAll(localeNameSeparator, " (")}${localeNameSlices.length > 1 ? ')' : ''}';
  }
}

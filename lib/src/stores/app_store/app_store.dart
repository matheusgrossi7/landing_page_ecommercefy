import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../src_exports.dart';

part 'app_store.g.dart';

// ignore: library_private_types_in_public_api
class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  final Locale currencyLocale = AppLocales.getSysLocale();

  @observable
  Locale locale = AppLocales.initialLocale();

  @action
  void setLocale(Locale newLocale) {
    if (newLocale != locale) {
      locale = newLocale;
    }
  }
}

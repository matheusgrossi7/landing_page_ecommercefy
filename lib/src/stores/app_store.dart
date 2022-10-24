import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../src_exports.dart';

part 'app_store.g.dart';

// ignore: library_private_types_in_public_api
class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  _AppStore({
    required this.storage,
  }) {
    session = Session(
      id: StringUtils.generateId(),
      accessTimestamp: Timestamp.now(),
      leadSource: "",
      ip: "",
    );
  }

  final Storage storage;

  final Locale currencyLocale = AppLocales.getSysLocale();
  late Session session;

  Future<void> storeSession(String leadSource) async {
    if (session.leadSource == "") {
      session.leadSource = leadSource;
      Modular.to.navigate(AppModule.landingPageRouteName);
      session.ip = await Ipify.ipv64();
      storage.saveSession(session);
    }
  }

  @observable
  Locale locale = AppLocales.initialLocale();

  @action
  void setLocale(Locale newLocale) {
    if (newLocale != locale) {
      locale = newLocale;
    }
  }
}

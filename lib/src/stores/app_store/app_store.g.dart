// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppStore on _AppStore, Store {
  late final _$localeAtom = Atom(name: '_AppStore.locale', context: context);

  @override
  Locale get locale {
    _$localeAtom.reportRead();
    return super.locale;
  }

  @override
  set locale(Locale value) {
    _$localeAtom.reportWrite(value, super.locale, () {
      super.locale = value;
    });
  }

  late final _$_AppStoreActionController =
      ActionController(name: '_AppStore', context: context);

  @override
  void setLocale(Locale newLocale) {
    final _$actionInfo =
        _$_AppStoreActionController.startAction(name: '_AppStore.setLocale');
    try {
      return super.setLocale(newLocale);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
locale: ${locale}
    ''';
  }
}

import 'package:flutter/material.dart';

class AppCurrency {
  static String getCurrencyLabel(Locale sysLocale) => 'R\$';

  static String getPriceString({
    required String currencyLabel,
    required double priceValue,
  }) {
    final String price = priceValue.toString().replaceAll('.', ',');
    return '$currencyLabel$price';
  }
}

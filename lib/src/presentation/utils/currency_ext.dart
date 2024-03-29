import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Extension function to format currency
extension CurrencyExt on num {
  String formatAmount() {
    final currencyFormatter = NumberFormat("#,##0.00", "en_NG");
    return currencyFormatter.format(this);
  }
}

/// Extension function to return a valid currency symbol
extension CurrencySymbolExt on String {
  String currencySymbol(BuildContext context) {
    //Locale locale = Localizations.localeOf(context);
    var format =NumberFormat.simpleCurrency(locale: Platform.localeName, name: this);
    return format.currencySymbol;
  }

  String formatCurrency(BuildContext context, num amount) {
    return currencySymbol(context) + amount.formatAmount();
  }
}

import 'package:flutter/foundation.dart';

/// use this utility function for printing to the console
/// Avoid using print all over the code so as to avoid calling the print method in production.
void printLn(dynamic data) {
  if (kDebugMode) {
    // ignore: avoid_print
    print(data);
  }
}

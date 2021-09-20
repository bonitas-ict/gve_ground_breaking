import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

/**
 * THE STATIC METHODS IN THE EXTENSION FUNCTION ITSELF CANNOTE BE CALLED DIRECTLY ON THE MAIN CLASS WE ARE EXTENDING IT'S 
 * FUNCTIONALITY AS A STATIC METHOD AND THIS IS PRIMARILY DUE TO THE WAY DART EXTENSION FUNCTION WAS BUILT. 
 * NB: TO USE THIS FUNCTION, STATIC METHODS MUST BE CALLED DIRECTLY ON THE EXTENSION NAME I.E ValidationExt.actualLength(...)
 */

/// Extension function to format currency
extension ValidationExt on FormBuilderValidators {
    /// [FormFieldValidator] that requires the field character length to be of a certain number.
  static FormFieldValidator<T> actualLength<T>(
    BuildContext context, int length, {
    String? errorText,
  }) {
    return (T? valueCandidate) {
      if (valueCandidate == null || (valueCandidate is String && valueCandidate.trim().length!= length)) {
        return errorText ?? 'Character length should be $length';
      }
      return null;
    };
  }
}
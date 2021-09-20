import 'package:flutter/material.dart';
import 'package:flash/flash.dart';
/// A utility class for displaying snackbar messages on the UI
class SnackUtil{

  /// Prevent class instantiation
  const SnackUtil._();
  
  /// Call this static method when you need to display a success snackbar
  static void showSuccessSnack({required BuildContext context, required String message, String? title="", Duration duration= const Duration(seconds: 6)}) async{
    await showFlash(
      context: context, 
      duration: const Duration(seconds: 6),
      builder: (context, controller){
        return Flash<dynamic>.bar(
          backgroundColor: const Color(0xFF03DAC6) ,
          horizontalDismissDirection: HorizontalDismissDirection.startToEnd,
          margin: const EdgeInsets.all(8),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          position: FlashPosition.bottom,
          controller: controller, 
          forwardAnimationCurve: Curves.easeOutBack,
          reverseAnimationCurve: Curves.slowMiddle,
          child: FlashBar(content: Text(message, style: const TextStyle(color: Colors.black),), title:title!=null ?Text(title): null,icon: const Icon(Icons.done,color: Colors.black), )
        );
      }
    );
  }

  /// Call this static method when you need to display a error snackbar
  static void showErrorSnack({required BuildContext context, required String message, String? title="", Duration duration= const Duration(seconds: 6)}) async{
    await showFlash(
      context: context, 
      duration: const Duration(seconds: 8),
      builder: (context, controller){
        return Flash<dynamic>.bar(
          backgroundColor: const Color(0xFFCF6679) ,
          margin: const EdgeInsets.all(8),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          horizontalDismissDirection: HorizontalDismissDirection.startToEnd,
          position: FlashPosition.bottom,
          controller: controller, 
          forwardAnimationCurve: Curves.easeOutBack,
          reverseAnimationCurve: Curves.slowMiddle,
          child: FlashBar(content: Text(message, style: const TextStyle(color: Colors.black)), title:title!=null ?Text(title): null,icon: const Icon(Icons.warning, color: Colors.black,), )
        );
      }
    );
  }
}
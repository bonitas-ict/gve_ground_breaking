import 'package:flutter/material.dart';

/// Rounded button with custom rounded shape implementation
class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.onPressed, required this.label , this.color = const Color(0xFF598E48) }) : super(key: key);
  final VoidCallback onPressed;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
      style: ElevatedButton.styleFrom(shape: StadiumBorder(),elevation: 0, primary: color,),
    );
  }
}

///Rectangular shapped buttons
class RectangleButton extends StatelessWidget {
  const RectangleButton({Key? key, required this.onPressed, required this.label }) : super(key: key);
  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label.toUpperCase(),
        style: TextStyle(fontSize: 14)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF598E48)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(color:  const Color(0xFF598E48))
          )
        )
      ),
    );
  }
}

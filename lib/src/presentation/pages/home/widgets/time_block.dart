import 'package:flutter/material.dart';

class TimeBlock extends StatelessWidget {
  const TimeBlock({Key? key, required int digit, required String label, this.color= Colors.black }) :_digit = digit,_label = label, super(key: key);
  final int _digit;
  final String _label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text( _digit<10 ?"0$_digit": _digit.toString(), style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 4),
        Text(_label, style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 10,color: const Color(0xFF959EA3)),)
      ],
    );
  }
}

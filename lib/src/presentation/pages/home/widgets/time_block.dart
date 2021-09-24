import 'package:flutter/material.dart';

class TimeBlock extends StatelessWidget {
  const TimeBlock({Key? key, required int digit, required String label }) :_digit = digit,_label = label, super(key: key);
  final int _digit;
  final String _label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_digit.toString(), style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 4),
        Text(_label, style: Theme.of(context).textTheme.overline!.copyWith(fontSize: 10),)
      ],
    );
  }
}

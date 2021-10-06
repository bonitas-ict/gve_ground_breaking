import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:gve_opening/src/presentation/pages/home/widgets/widgets.dart';

class HomeTimer extends StatelessWidget {
  const HomeTimer({ Key? key, required this.timeToEvent }) : super(key: key);
  final num timeToEvent;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Ceremony Countdown', style: Theme.of(context).textTheme.bodyText2!.copyWith(color: const Color(0xFF598E48))),
        const SizedBox(height: 20),
        CountdownTimer(
          endTime: timeToEvent.toInt() *1000,
          widgetBuilder: (_, CurrentRemainingTime? time){
            if(time != null){
              return Row(
                children: [
                  TimeBlock(digit: time.days??0, label: 'DAYS',),
                  const SizedBox(width: 8),
                  TimeBlock(digit: time.hours ??0, label: 'HOURS'),
                  const SizedBox(width: 8,),
                  TimeBlock(digit: time.min??0,label: 'MINUTES'),
                  const SizedBox(width: 8,),
                  TimeBlock(digit: time.sec??0, label: 'SECONDS'),
                ],
              );
            }else{
              return const Text('Event Time has been exceeded');
            }
          }
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
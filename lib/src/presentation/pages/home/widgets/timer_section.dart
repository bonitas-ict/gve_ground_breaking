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
        Text('Ceremony Countdown', style: Theme.of(context).textTheme.headline1!.copyWith(color: const Color(0xFF598E48), fontSize: 12)),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Expanded(
              child: CountdownTimer(
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
            ),
            const TimeBlock(digit: 450, label: 'CONFIRMED\nATTENDEES', color: Color(0xFF4D8047),),
          ],
        ),
        const SizedBox(height: 20),
        Text('Event Management - Categories', style: Theme.of(context).textTheme.headline1!.copyWith(color: const Color(0xFF598E48), fontSize: 12)),
        const SizedBox(height: 20),
        SizedBox(
          height: 180,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (_, int index){
              return _Categs(category: categories[index],);
            }
          ),
        )
      ],
    );
  }
}

const List<Map<String, String>> categories =[
  {"path":'assets/images/s.png',"title":"Security" ,"description": "Lorem ipsom dolor amo blah blah blah blah blah blah blah blah"},
  {"path":'assets/images/p.png',"title":"Parking" ,"description": "Lorem ipsom dolor amo blah blah blah blah blah blah blah blah"},
  {"path":'assets/images/c.png',"title":"Covid" ,"description": "Lorem ipsom dolor amo blah blah blah blah blah blah blah blah"},
  {"path":'assets/images/v.png',"title":"Venue" ,"description": "Lorem ipsom dolor amo blah blah blah blah blah blah blah blah"},
];

class _Categs extends StatelessWidget {
  final Map<String, String> category;
  const _Categs({ Key? key, required this.category }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: SizedBox(
        width: 130,
        child: Column(
          children: [
            Image.asset(category['path']!, fit: BoxFit.cover, height: 130,),
            Text(category['title']!, style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black))
          ],
        ),
      ),
    );
  }
}
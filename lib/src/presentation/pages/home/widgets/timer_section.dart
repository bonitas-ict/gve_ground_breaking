import 'dart:io';

import 'package:flutter/cupertino.dart';
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
          height: 165,
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
  {"path":'assets/images/s.png',"title":"Security" ,"description": "Over an acre of land close to the event’s venue is reserved for parking."},
  {"path":'assets/images/p.png',"title":"Parking" ,"description": "All security measures have been put in place to ensure the safety of our guests throughout the event"},
  {"path":'assets/images/c.png',"title":"Covid" ,"description": "All Covid-19 protocols will be adhered to including temperature checks, physical distancing, use of facemasks and hand sanitisers"},
  {"path":'assets/images/v.png',"title":"Venue" ,"description": "The event will be held at Green Valley Estate Akwa, adjacent to Ngozika Housing Estate."},
];

class _Categs extends StatelessWidget {
  final Map<String, String> category;
  const _Categs({ Key? key, required this.category }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(Platform.isIOS){
          print('jhh');
          showDialog(context: context, builder: (BuildContext context){
             return  CupertinoAlertDialog(
              title: Text(category['title']!),
              actions: [
                CupertinoDialogAction(onPressed: (){
                  Navigator.of(context).pop();
                }, child: const Text("OK")),
              ],
              content: Text(category['description']!),
            );
          });
        }else{
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: Text(category['title']!),
              titleTextStyle: 
                const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,fontSize: 20),
                actionsOverflowButtonSpacing: 20,
                actions: [
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: const Text("OK")),
                ],
                content: Text(category['description']!),
            );
          });
        }
      },
      child: SizedBox(
        width: 120,
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
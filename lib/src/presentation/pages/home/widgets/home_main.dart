import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:gve_opening/src/presentation/presentation.dart';

import 'widgets.dart';

const List<Map<String, String>> _categories =[
  {"path":'assets/images/btn_2.png',"title":"Buy a Plot", "desc": "Get 20% off within the next 2 weeks in our Early Bird Offer. "},
  {"path":'assets/images/btn_1.png',"title":"Follow the Event", "desc": "Get 20% off within the next 2 weeks in our Early Bird Offer. " },
  {"path":'assets/images/btn_4.png',"title":"See Your Seat", "desc": "Arrived at the venue? See your seat reservation."},
  {"path":'assets/images/btn_3.png',"title":"View Event Agenda", "desc": "Arrived at the venue? See your seat reservation."},
];

class HomeMain extends StatelessWidget {
  const HomeMain({ Key? key, required this.agendas, required this.timestamp }) : super(key: key);
  final List<Agenda> agendas;
  final num timestamp;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical:30),
        child: Column(
          children: [
            HomeTimer(timeToEvent: timestamp,),
            const HomeSlider(),
            const SizedBox(height: 20,),
            SizedBox(
              height: 200,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (_, int index){
                  final cat = _categories[index];
                  return _TapItem(filePath: cat['path']!, label: cat['title']!, desc: cat['desc']!,index: index,);
                }
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

class _TapItem extends StatelessWidget {
  const _TapItem({ Key? key, required this.filePath, required this.label, required this.desc, required this.index}) : super(key: key);
  final String filePath;
  final String label;
  final String desc;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        switch(index){
          case 0:
            context.navigateTo(const LandListingRoute());
            break;
          case 1:
            context.navigateTo(const AgendaListRoute());
            break;
          case 2:
            context.navigateTo(const SeatRoute());
            break;
          case 3:
          default:
            break;
        }
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(filePath, fit: BoxFit.cover, height: 110),
            const SizedBox(height: 4),
            Text(label, style: Theme.of(context).textTheme.subtitle1!.copyWith(color: const Color(0xFF7EB84E), fontSize: 15), maxLines: 1),
            Text(desc, style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black, fontSize: 12), maxLines: 2,)
          ],
        ),
      ),
    );
  }
}
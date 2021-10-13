import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:gve_opening/src/presentation/presentation.dart';

import 'widgets.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _TapItem(
                  filePath: 'assets/images/btn_1.png', 
                  label: 'Follow the Event', 
                  onTap: (){
                    context.navigateTo(const AgendaListRoute());
                  },
                ),
                _TapItem(
                  filePath: 'assets/images/btn_2.png', 
                  label: 'Buy a Plot', 
                  onTap: (){
                    context.navigateTo(const LandListingRoute());
                  },
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _TapItem(
                  filePath: 'assets/images/btn_3.png', 
                  label: 'View Event Agenda', 
                  onTap: (){
                    context.navigateTo(const AgendaListRoute());
                  },
                ),
                _TapItem(
                  filePath: 'assets/images/btn_4.png', 
                  label: 'See Your Seat', 
                  onTap: (){
                    context.navigateTo(const SeatRoute());
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _TapItem extends StatelessWidget {
  const _TapItem({ Key? key, required this.filePath, required this.label, required this.onTap}) : super(key: key);
  final String filePath;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 180,
        child: Column(
          children: [
            Image.asset(filePath, fit: BoxFit.cover, height: 130,),
            Text(label, style: Theme.of(context).textTheme.bodyText1!.copyWith(color: const Color(0xFFB9D89F)))
          ],
        ),
      ),
    );
  }
}
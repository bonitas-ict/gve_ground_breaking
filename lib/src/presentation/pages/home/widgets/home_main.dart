import 'package:flutter/material.dart';
import 'package:gve_opening/src/domain/domain.dart';

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
            ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: agendas.length,
              itemBuilder: (_, int index){
                return  AgendaRow(agenda: agendas[index],);
              },
            ),
          ],
        ),
      ),
    );
  }
}
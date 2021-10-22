import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:gve_opening/src/presentation/presentation.dart';
import 'package:intl/intl.dart';

class AgendaRow extends StatelessWidget {
  const AgendaRow({ Key? key, required this.agenda}) : super(key: key);
  final Agenda agenda;

  @override
  Widget build(BuildContext context) {
    final startDate = DateFormat.jm().format(DateTime.fromMillisecondsSinceEpoch(agenda.startTimestamp.toInt()));
    final endDate = DateFormat.jm().format(DateTime.fromMillisecondsSinceEpoch(agenda.endTimestamp.toInt()));
    return GestureDetector(
      onTap: () => context.router.navigate(AgendaDetailRoute(agendaId: agenda.id)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(startDate),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            children: [
              const Divider(color: Color(0xFF598E48),),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(agenda.title,  style:Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 15)),
                            Text(agenda.speaker?.name ?? 'Annonymous', style:Theme.of(context).textTheme.bodyText2 ,),
                            Text("$startDate - $endDate", style:  Theme.of(context).textTheme.overline!.copyWith(fontSize: 12, color:const Color(0xFFCDCDCD)),)
                          ],
                        )
                      ),
                      CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.white,
                        backgroundImage: agenda.speaker?.thumbnailUrl!= null && agenda.speaker!.thumbnailUrl!.isNotEmpty
                            ? NetworkImage(dotenv.env['BASE_URL']!+ (agenda.speaker?.thumbnailUrl ?? '')): null,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],),
    );
  }
}
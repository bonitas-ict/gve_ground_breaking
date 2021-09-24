import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:intl/intl.dart';

class AgendaRow extends StatelessWidget {
  const AgendaRow({ Key? key, required this.agenda}) : super(key: key);
  final Agenda agenda;

  @override
  Widget build(BuildContext context) {
    final startDate = DateFormat.jm().format(DateTime.fromMillisecondsSinceEpoch(agenda.startTimestamp.toInt()));
    final endDate = DateFormat.jm().format(DateTime.fromMillisecondsSinceEpoch(agenda.endTimestamp.toInt()));
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Text('10:00AM'),
      const SizedBox(width: 8),
      Expanded(
        child: Column(
          children: [
            const Divider(),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(agenda.title,  style:Theme.of(context).textTheme.bodyText2),
                          Text(agenda.speaker?.name ?? 'Annonymous', style:Theme.of(context).textTheme.bodyText2 ,),
                          Text("$startDate - $endDate", style:  Theme.of(context).textTheme.overline,)
                        ],
                      )
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(dotenv.env['BASE_URL']!+ (agenda.speaker?.thumbnailUrl ?? ''),
                          width: 45.0,
                          height: 45.0,
                          fit: BoxFit.fill,
                        ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    ],);
  }
}
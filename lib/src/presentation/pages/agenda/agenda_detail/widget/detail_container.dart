import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/domain/domain.dart';

import '../../../../presentation.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgendaDetailBloc, AgendaDetailState>(
      builder: (context, state) {
        return state.map(
          initial: (_)=> const Center(child: CircularProgressIndicator(),), 
          loadInProgress:(_)=> const Center(child: CircularProgressIndicator(),), 
          loadSuccess:(s) => _DetailInformation(agenda: s.agendas, speakers: s.speakers), 
          loadFailure:(f) => ErrorHandler(handler:()=> context.read<AgendaDetailBloc>().add(AgendaDetailEvent.getAgendaDetails(f.agendaId)),)
        );
      },
    );
  }
}

class _DetailInformation extends StatelessWidget {
  const _DetailInformation({ Key? key, required this.agenda, required this.speakers }) : super(key: key);
  final Agenda agenda;
  final List<Speaker> speakers;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.circle, color: Colors.black,size: 12,),
              const SizedBox(width: 6,),
              Expanded(child: Text(agenda.title, style: Theme.of(context).textTheme.bodyText2!.copyWith(color: const Color(0xFF7EB84E)),))
            ],
          ),
          const SizedBox(height: 40,),
          Text(agenda.description ?? '',style:Theme.of(context).textTheme.bodyText2),
          const SizedBox(height: 40,),
          Visibility(child: Text('Speaker(s)',style: Theme.of(context).textTheme.subtitle2 ), visible: speakers.isNotEmpty,),
          ListView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            itemCount: speakers.length,
            itemBuilder: (_, int index){
              return  _SpeakerItem(speaker: speakers[index]);
            },
          )
        ],
      ),
    );
  }
}

class _SpeakerItem extends StatelessWidget {
  const _SpeakerItem({ Key? key, required this.speaker }) : super(key: key);
  final Speaker speaker;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> context.router.navigate(SpeakerDetailRoute(speakerId: speaker.id)),
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            CircleAvatar(
              radius: 16.0,
              backgroundColor: Colors.grey,
              backgroundImage: speaker.thumbnailUrl!= null && speaker.thumbnailUrl!.isNotEmpty
                  ? NetworkImage(dotenv.env['BASE_URL']!+ (speaker.thumbnailUrl ?? '')): null,
            ),
            const SizedBox(width: 8,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(speaker.name, style: Theme.of(context).textTheme.subtitle2,),
                  Text(speaker.titles ?? '', style: Theme.of(context).textTheme.bodyText2,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
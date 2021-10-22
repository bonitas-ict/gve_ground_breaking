import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/domain/domain.dart';

import '../../../../presentation.dart';

class SpeakerContainer extends StatelessWidget {
  const SpeakerContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgendaSpeakerBloc, AgendaSpeakerState>(
      builder: (context, state) {
        return state.map(
          initial: (_)=> const Center(child: CircularProgressIndicator(),), 
          loadInProgress:(_)=> const Center(child: CircularProgressIndicator(),), 
          loadSuccess:(s) => _SpeakerDetail(speaker: s.speaker), 
          loadFailure:(f) => ErrorHandler(handler:()=> context.read<AgendaSpeakerBloc>().add(AgendaSpeakerEvent.getAgendaSpeakerDetails(f.agendaSpeakerId)),)
        );
      },
    );
  }
}

class _SpeakerDetail extends StatelessWidget {
  const _SpeakerDetail({ Key? key, required this.speaker }) : super(key: key);
  final Speaker speaker;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(speaker.name, style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 16, color: const Color(0xFF7EB84E)),),
                    const SizedBox(height: 4),
                    Text(speaker.titles ?? '',style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14) ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 16.0,
                backgroundColor: Colors.grey,
                backgroundImage: speaker.thumbnailUrl!= null && speaker.thumbnailUrl!.isNotEmpty
                    ? NetworkImage(dotenv.env['BASE_URL']!+ (speaker.thumbnailUrl ?? '')): null,
              ),
            ],
          ),
          const SizedBox(height: 40,),
          Text(speaker.bio ?? '',style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16) ),
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/presentation/pages/speaker/speaker_detail/widget/speaker_container.dart';

import '../../../../../injection.dart';

class SpeakerDetailPage extends StatelessWidget {
  const SpeakerDetailPage({Key? key, required int speakerId}) :_speakerId = speakerId, super(key: key);
  final int _speakerId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SvgPicture.asset('assets/images/speaker_bg.svg'),
            BlocProvider<AgendaSpeakerBloc>(
              create: (context) => getIt<AgendaSpeakerBloc>()..add(AgendaSpeakerEvent.getAgendaSpeakerDetails(_speakerId)),
              child: SafeArea(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: ()=> Navigator.pop(context),
                        child:const Icon(Icons.chevron_left)
                      ),
                      const SizedBox(height: 40,),
                      Text('Event Speaker \nDetails', style: Theme.of(context).textTheme.headline6,),
                      const SizedBox(height: 40,),
                     const Expanded(child: SpeakerContainer())
                    ]
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

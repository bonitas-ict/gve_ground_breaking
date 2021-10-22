import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/injection.dart';
import 'package:gve_opening/src/application/application.dart';
import 'widget/widget.dart';

class AgendaDetailPage extends StatelessWidget {
  const AgendaDetailPage({Key? key, required int agendaId }) :_agendaId= agendaId, super(key: key);
  final int _agendaId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SvgPicture.asset('assets/images/agenda_detail_bg.svg'),
            BlocProvider<AgendaDetailBloc>(
              create: (context) => getIt<AgendaDetailBloc>()..add(AgendaDetailEvent.getAgendaDetails(_agendaId)),
              child: SafeArea(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: ()=> Navigator.pop(context),
                        child:const Icon(Icons.arrow_back)
                      ),
                      const SizedBox(height: 40,),
                      Text('Agenda \nDetails', style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, color: Colors.black),),
                      const SizedBox(height: 40,),
                      const Expanded(child: DetailContainer())
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

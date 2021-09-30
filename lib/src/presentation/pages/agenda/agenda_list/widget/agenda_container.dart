import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:gve_opening/src/presentation/pages/home/widgets/widgets.dart';
import '../../../../presentation.dart';
import './widget.dart';

class AgendaContainer extends StatelessWidget {
  const AgendaContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.map(
          initial: (_)=> const AgendaLoader(), 
          loadInProgress:(_)=> const AgendaLoader(), 
          loadSuccess:(s) => _AgendaList(agendas: s.agendas), 
          loadFailure:(f) => ErrorHandler(handler:()=> context.read<HomeBloc>().add(const HomeEvent.getDashboardInfo()),)
        );
      },
    );
  }
}

class _AgendaList extends StatelessWidget {
  const _AgendaList({ Key? key, required this.agendas }) : super(key: key);
  final List<Agenda> agendas;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: agendas.length,
      itemBuilder: (_, int index){
        return  AgendaRow(agenda: agendas[index],);
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/presentation/pages/agenda/agenda_list/widget/agenda_container.dart';
import 'package:gve_opening/src/presentation/pages/dashboard/dashboad.dart';

import '../../../../../injection.dart';

class AgendaListPage extends StatelessWidget {
  const AgendaListPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SvgPicture.asset('assets/images/agenda_bg.svg', fit: BoxFit.cover),
            BlocProvider<HomeBloc>(
              create: (context) => getIt<HomeBloc>()..add(const HomeEvent.getDashboardInfo()),
              child: SafeArea(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: ()=> scaffoldKey.currentState!.openDrawer(),
                        child: SvgPicture.asset('assets/images/nav_toggle.svg')
                      ),
                      const SizedBox(height: 40,),
                      Text('Event Agenda', style: Theme.of(context).textTheme.headline1!.copyWith(color: const Color(0xFF598E48), fontSize: 16)),
                      const SizedBox(height: 20),
                      const Expanded(child: AgendaContainer())
                    ]
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
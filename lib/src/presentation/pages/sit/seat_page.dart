import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/injection.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/presentation/pages/dashboard/dashboad.dart';

import '../../presentation.dart';
import 'widget/widget.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           SvgPicture.asset('assets/images/seat_allocation_bg.svg', fit: BoxFit.cover),
           BlocProvider<SitBloc>(
             create: (context) => getIt<SitBloc>()..add(const SitEvent.initialize()),
             child: Column(
                        children: [
                          Container(
                           height: 200,
                           width: double.infinity,
                           padding: const EdgeInsets.all(16),
                           decoration: const BoxDecoration(
                             borderRadius: BorderRadius.only(
                               bottomLeft: Radius.circular(20.0),
                               bottomRight: Radius.circular(20.0)
                             ),
                             color: Color(0xFF7EB84E),
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               GestureDetector(
                                 onTap: ()=> scaffoldKey.currentState!.openDrawer(),
                                 child: SvgPicture.asset('assets/images/nav_no_bg.svg', color: Colors.white,)
                               ),
                               const SizedBox(height: 40,),
                               Text('Seat \nAllocation', style: Theme.of(context).textTheme.subtitle1!.copyWith(color:Colors.white, ),),
                             ],
                           ),
                          ),
                          const Expanded(
                            child: _StateMachine()
                          )
                        ],
                      ),
           )
        ],
      ),
    );
  }
}

class _StateMachine extends StatelessWidget {
  const _StateMachine({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SitBloc, SitState>(
      builder: (context, state) {
        return state.map(
          initial: (_)=> const Center(child: CircularProgressIndicator(),),//const HomeLoader(), 
          loadInProgress:(_)=> const Center(child: CircularProgressIndicator(),), //const HomeLoader(), 
          loadSuccess:(s) => SitContainer(sit: s.seatInfo,), 
          loadFailure:(f) => ErrorHandler(handler:()=> context.read<SitBloc>().add(const SitEvent.initialize()),)
        );
      },
    );
  }
}
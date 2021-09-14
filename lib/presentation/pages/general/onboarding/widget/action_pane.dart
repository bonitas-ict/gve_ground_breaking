import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gve_launch/application/application.dart';
import 'package:gve_launch/domain/domain.dart';
import 'package:gve_launch/presentation/presentation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ActionPane extends StatelessWidget {
  const ActionPane({ Key? key, required this.activeIndex, required this.pageSize, required this.pagerController }) : super(key: key);
  final int activeIndex;
  final int pageSize;
  final CarouselController? pagerController;

  @override
  Widget build(BuildContext context) {
    final appLoc =AppLocalizations.of(context);
    return Positioned(
      bottom: 32.0,
      right: 16,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: activeIndex == pageSize-1 ? 
          RoundedButton(color: const Color(0xFF06070A),onPressed: ()=>context.read<AuthenticationBloc>().add(AuthenticationEvent.switchAppState(AppState.UNAUTHENTICATED)), label: appLoc!.finish ) 
        : 
          TextButton(onPressed: ()=>pagerController?.nextPage(), child: Text(appLoc!.next), style: TextButton.styleFrom( primary: const Color(0xFF598E48),),),
      ),
    );
  }
}
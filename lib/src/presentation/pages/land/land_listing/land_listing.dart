import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/injection.dart';
import 'package:gve_opening/src/domain/land/land.dart';
import 'package:gve_opening/src/presentation/pages/dashboard/dashboad.dart';
import 'package:gve_opening/src/application/application.dart';
import '../../../presentation.dart';
import './widget/widget.dart';

class LandListingPage extends StatelessWidget {
  const LandListingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/land_bg.svg', fit: BoxFit.cover),
          BlocProvider<LandInfoBloc>(
            create: (context) => getIt<LandInfoBloc>()..add(const LandInfoEvent.getLandsInfo()),
            child: SafeArea(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: ()=> scaffoldKey.currentState!.openDrawer(),
                                  child: SvgPicture.asset('assets/images/nav_toggle_c.svg')
                                ),
                                const SizedBox(height: 40,),
                                Text('Available \nPlots', style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, color: Colors.black),),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: _StateMachine()
                          )
                        ],
                      ),
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
    return BlocBuilder<LandInfoBloc, LandInfoState>(
      builder: (context, state) {
        return state.map(
          initial: (_)=> const Center(child: CircularProgressIndicator(),),//const HomeLoader(), 
          loadInProgress:(_)=> const Center(child: CircularProgressIndicator(),), //const HomeLoader(), 
          loadSuccess:(s) => _LandList(plotCategories: s.plotCategories), 
          loadFailure:(f) => ErrorHandler(handler:()=> context.read<LandInfoBloc>().add(const LandInfoEvent.getLandsInfo()),)
        );
      },
    );
  }
}

class _LandList extends StatelessWidget {
  const _LandList({ Key? key, required this.plotCategories }) : super(key: key);
  final List<PlotCategory> plotCategories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: plotCategories.length ,
        itemBuilder: (_, int index){
          return  MainItem(plotCategory: plotCategories[index],);
        },
      ),
    );
  }
}
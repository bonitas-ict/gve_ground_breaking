import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gve_opening/injection.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/presentation/pages/dashboard/dashboad.dart';
import 'package:gve_opening/src/presentation/pages/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<HomeBloc>()..add(const HomeEvent.getDashboardInfo()),
        child: Stack( 
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/home_banner.png'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.black
                  ),
                  width: double.infinity,
                  height: 100,
                ),
                Container(
                  color: Colors.white38,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: ()=> scaffoldKey.currentState!.openDrawer(),
                        child: SvgPicture.asset('assets/images/nav_toggle.svg')
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top:100),
                  height: double.infinity,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      SvgPicture.asset('assets/images/home_bg.svg', fit: BoxFit.cover),
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return state.map(
                            initial: (_)=> const HomeLoader(), 
                            loadInProgress:(_)=> const HomeLoader(), 
                            loadSuccess:(s) => HomeMain(agendas: s.agendas, timestamp: s.timestamp), 
                            loadFailure:(f) => ErrorHandler(handler:()=> context.read<HomeBloc>().add(const HomeEvent.getDashboardInfo()),)
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 16,
                  child: Image.asset('assets/images/logo.png', height: 80),
                ),
              ],
            ),
      ),
    );
  }
}

class ErrorHandler extends StatelessWidget {
  const ErrorHandler({ Key? key, required this.handler }) : super(key: key);
  final Function handler;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: ()=>handler(), child: const Text('Retry')),
    );
  }
}

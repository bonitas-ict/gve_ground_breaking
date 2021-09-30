import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import './widget/widget.dart';
import 'package:gve_opening/src/presentation/presentation.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:const SideDrawer(),
      extendBody: true,
      body: AutoTabsScaffold(
        routes:const[HomeRoute(), AgendaListRoute(), SeatRoute(), LandListingRoute(),NotificationRoute()],
        bottomNavigationBuilder: (_, tabsRouter){
          return BottomNav(tabsRouter: tabsRouter);
        }
      ),
    );
  }
}



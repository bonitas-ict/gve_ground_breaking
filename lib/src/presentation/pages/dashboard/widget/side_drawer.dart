import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:gve_opening/src/presentation/routes/routes.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({ Key? key }) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {

  @override
  void initState() {
    context.read<NotificationCountBloc>().add(const NotificationCountEvent.loadNotificationCount());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40.0),
            topRight: Radius.circular(40.0)
          ),
          color: Color(0xFFF5F5F5),
        ),
        height: size.height,
        width: 263,
        child: Stack(
          children: [
            Positioned(
              bottom: 30,
              left: -20,
              child: SvgPicture.asset('assets/images/hexagons.svg'),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(onPressed: ()=>Navigator.of(context).pop(), icon: const Icon(Icons.clear), iconSize: 40,),
                      const SizedBox(height: 20,),
                      Text('GREEN', style: Theme.of(context).textTheme.headline4!.copyWith(color:Colors.white,fontWeight: FontWeight.w700, fontSize: 35)),
                      const SizedBox(height: 4,),
                      Text('VALLEY', style: Theme.of(context).textTheme.headline4!.copyWith(color:Colors.white,fontWeight: FontWeight.w700, fontSize: 35)),
                      const SizedBox(height: 4,),
                      Text('ESTATE', style: Theme.of(context).textTheme.headline4!.copyWith(color:Colors.white,fontWeight: FontWeight.w700, fontSize: 35)),
                      const SizedBox(height: 20),
                      // _DrawerItems(
                      //   () {
                      //    // context.router.navigate(const MyProfileRoute());
                      //   },
                      //   iconBackground: "assets/images/dashboard.svg",
                      //   drawerIcon: Icons.person,
                      //   drawerItemTitle: "Dashboard",
                      // ),
                      // _DrawerItems(
                      //   () {
                      //    // context.router.navigate(const MyProfileRoute());
                      //   },
                      //   iconBackground: "assets/images/seat.svg",
                      //   drawerIcon: Icons.person,
                      //   drawerItemTitle: "Seat Allocation",
                      // ),
                      // _DrawerItems(
                      //   () {
                      //    // context.router.navigate(const MyProfileRoute());
                      //   },
                      //   iconBackground: "assets/images/land.svg",
                      //   drawerIcon: Icons.person,
                      //   drawerItemTitle: "Land Purchase",
                      // ),
                      _DrawerItems(
                        () {
                          Navigator.pop(context);
                          context.router.navigate(const PayHistoryRoute());
                        },
                        iconBackground: "assets/images/pay.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "Payment History",
                      ),
                      BlocBuilder<NotificationCountBloc, NotificationCountState>(
                        builder: (context, state) {
                          return _DrawerItems(
                            (){
                              Navigator.pop(context);
                              context.navigateTo(const DashboardRoute(children: [NotificationRoute()]));
                            } ,
                            iconBackground: "assets/images/bell.svg",
                            drawerIcon: Icons.person,
                            drawerItemTitle: "Notifications",
                            showBadge: state.notificationCount.toInt() > 0 ,
                            counter: state.notificationCount.toInt(),
                          );
                        },
                      ),
                      _DrawerItems(
                        () {
                          context.router.navigate(const SettingsRoute());
                        },
                        iconBackground: "assets/images/cog.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "App Settings",
                      ),
                      _DrawerItems(
                        () {
                          context.read<AuthenticationBloc>().add(const AuthenticationEvent.switchAppState(AppState.UNAUTHENTICATED));
                          //context.router.navigate(const SettingsRoute());
                        },
                        iconBackground: "assets/images/cog.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "Logout",
                      ),
                      // _DrawerItems(
                      //   (){},
                      //   iconBackground: "assets/images/event.svg",
                      //   drawerIcon: Icons.person,
                      //   drawerItemTitle: "Event Agenda",
                      // ),
                      const SizedBox(height: 30,),
                      const Divider(color: Color(0xFF7DB84D), height: 4,),
                      const SizedBox(height: 20,),
                      Text('ABOUT', style: Theme.of(context).textTheme.bodyText2!.copyWith(color:const Color(0xFFD2D2D2),fontWeight: FontWeight.w400),),
                      const SizedBox(height: 10,),
                      _DrawerItems(
                        () {
                          context.router.navigate(const AboutAppRoute());
                        },
                        iconBackground: "assets/images/cog.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "Green Valley Estate",
                      ),
                      _DrawerItems(
                        () {
                         context.router.navigate(const AboutUsRoute());
                        },
                        iconBackground: "assets/images/cog.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "Bonitas ICT",
                      ),
                      _DrawerItems(
                        () {
                         context.router.navigate(const AboutDevRoute());
                        },
                        iconBackground: "assets/images/cog.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "The Developers",
                      )
                    ],
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

class _DrawerItems extends StatelessWidget {
  final IconData? drawerIcon;
  final String drawerItemTitle, iconBackground;
  final bool showBadge;
  final Function onTap;
  final int counter;

  const _DrawerItems(this.onTap,
      {this.drawerIcon, this.drawerItemTitle = "", this.iconBackground = "", this.showBadge= false, this.counter = 0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>onTap(),
      child: Container(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(iconBackground),
            const SizedBox(
              width: 16.45,
            ),
            Expanded(
              child: Text(
                drawerItemTitle,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14, color: Colors.black),
              ),
            ),
            Visibility(
              visible: showBadge,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2 ),
                color: Colors.green,
                child: Text(counter.toString(), style: const TextStyle(color: Colors.white),)
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/src/presentation/routes/routes.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({ Key? key }) : super(key: key);

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
                      IconButton(onPressed: (){}, icon: const Icon(Icons.cancel_outlined)),
                      const SizedBox(height: 20,),
                      Text('GREEN', style: Theme.of(context).textTheme.headline4!.copyWith(color:Colors.white,fontWeight: FontWeight.w700)),
                      const SizedBox(height: 4,),
                      Text('VALLEY', style: Theme.of(context).textTheme.headline4!.copyWith(color:Colors.white,fontWeight: FontWeight.w700)),
                      const SizedBox(height: 4,),
                      Text('ESTATE', style: Theme.of(context).textTheme.headline4!.copyWith(color:Colors.white,fontWeight: FontWeight.w700)),
                      const SizedBox(height: 20),
                      _DrawerItems(
                        () {
                         // context.router.navigate(const MyProfileRoute());
                        },
                        iconBackground: "assets/images/dashboard.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "Dashboard",
                      ),
                      _DrawerItems(
                        () {
                         // context.router.navigate(const MyProfileRoute());
                        },
                        iconBackground: "assets/images/seat.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "Seat Allocation",
                      ),
                      _DrawerItems(
                        () {
                         // context.router.navigate(const MyProfileRoute());
                        },
                        iconBackground: "assets/images/land.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "Land Purchase",
                      ),
                      _DrawerItems(
                        () {
                          Navigator.pop(context);
                          context.router.navigate(const PayHistoryRoute());
                        },
                        iconBackground: "assets/images/pay.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "Payment History",
                      ),
                      _DrawerItems(
                        (){},
                        iconBackground: "assets/images/event.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "Event Agenda",
                      ),
                      const SizedBox(height: 30,),
                      const Divider(color: Color(0xFF7DB84D), height: 4,),
                      const SizedBox(height: 20,),
                      Text('ACCOUNT', style: Theme.of(context).textTheme.bodyText2!.copyWith(color:const Color(0xFFD2D2D2),fontWeight: FontWeight.w400),),
                      const SizedBox(height: 10,),
                       _DrawerItems(
                        () => context.router.navigate(const NotificationRoute()),
                        iconBackground: "assets/images/bell.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "Notifications",
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
                          context.router.navigate(const AboutAppRoute());
                        },
                        iconBackground: "assets/images/cog.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "About GVE",
                      ),
                      _DrawerItems(
                        () {
                         context.router.navigate(const AboutUsRoute());
                        },
                        iconBackground: "assets/images/cog.svg",
                        drawerIcon: Icons.person,
                        drawerItemTitle: "About Us",
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
  final Function onTap;

  const _DrawerItems(this.onTap,
      {this.drawerIcon, this.drawerItemTitle = "", this.iconBackground = ""});

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
            Text(
              drawerItemTitle,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gve_opening/src/application/application.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({ Key? key, required this.tabsRouter}) : super(key: key);
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap:(int index){
        if(index == 4){
          context.read<NotificationListBloc>().add(const NotificationListEvent.loadNotifications());
        } 
        tabsRouter.setActiveIndex(index);
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_view_week),
          label: 'Agenda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Seating',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Purchase',
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notification',
        ),
      ],
    );
  }
}
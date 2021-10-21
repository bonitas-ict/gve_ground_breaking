import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/domain/domain.dart';

import '../../../presentation.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child:SvgPicture.asset('assets/images/notification_bg.svg') ,
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)
                    ),
                    color: Color(0xFF7EB84E),
                    image: DecorationImage(
                      image: AssetImage('assets/images/notification_top.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        Text('Notifications', style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: _StateMachine(),
                )
              ],
            )
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
    return BlocBuilder<NotificationListBloc, NotificationListState>(
      builder: (context, state) {
        return state.map(
          initial: (_)=> const Center(child: CircularProgressIndicator(),),//const HomeLoader(), 
          loadInProgress:(_)=> const Center(child: CircularProgressIndicator(),), //const HomeLoader(), 
          loadSuccess:(s) => _MainList(notifications: s.notifications), 
          loadFailure:(f) => ErrorHandler(handler:()=> context.read<NotificationListBloc>().add(const NotificationListEvent.loadNotifications()),)
        );
      },
    );
  }
}

class _MainList extends StatelessWidget {
  const _MainList({ Key? key, required this.notifications}) : super(key: key);
  final List<NotificationMessage> notifications;
  @override
  Widget build(BuildContext context) {
    if(notifications.isEmpty) return const Center(child: Text('No Notification'),);
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (_, int index){
        return const _NotificationItem();
      },
    );
  }
}

class _NotificationItem extends StatelessWidget {
  const _NotificationItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      margin: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
      decoration: const BoxDecoration(
      color: Color(0xFFF9F9F9),
      borderRadius:BorderRadius.all(Radius.circular(10)),
    ),
      child: Row(
        children: [
          Image.asset('assets/images/cash.png',width:60,),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Text('Payment Completed', style: Theme.of(context).textTheme.bodyText1,)),
                    Row(
                      children: const[
                        Icon(Icons.timelapse, size: 16,),
                        SizedBox(width: 4),
                        Text('10:00 AM')
                      ],
                    )
                  ],
                ),
                Text(
                  'Your payment for Plot 882 has been completed; please download your receipt from the payment portal. Our team would contact you to finalize on other required documentations with you.',
                  style: Theme.of(context).textTheme.bodyText2
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
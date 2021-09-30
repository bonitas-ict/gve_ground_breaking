import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (_, int index){
                      return const _NotificationItem();
                    },
                  ),
                )
              ],
            )
          )
        ],
      ),
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
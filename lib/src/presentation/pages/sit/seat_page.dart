import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/src/presentation/pages/dashboard/dashboad.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           SvgPicture.asset('assets/images/seat_allocation_bg.svg', fit: BoxFit.cover),
           Column(
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
               Expanded(
                 child: SingleChildScrollView(
                   child:Container(
                     width: double.infinity,
                     padding: const EdgeInsets.all(16.0),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Center(
                          child: InteractiveViewer(
                            panEnabled: true, // Set it to false
                            boundaryMargin: const EdgeInsets.all(100),
                            minScale: 0.5,
                            maxScale: 1,
                            child:    CachedNetworkImage(
                              imageUrl:  'https://www.norman-network.net/sites/default/files/images/122715793%20network.jpg',
                              placeholder: (context, url) => const Center(child:CircularProgressIndicator()),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                              width:double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                         ),
                         const SizedBox(height: 150,),
                         Text('Seat Detail', style: Theme.of(context).textTheme.subtitle2!.copyWith(color:Colors.black,fontSize: 16 ),),
                         const SizedBox(height: 8,),
                         Row(
                           children: [
                             const Text('Seat No: '),
                             const SizedBox(width: 8,),
                             Text('077', style: Theme.of(context).textTheme.bodyText1,),
                           ],
                         ),
                         const SizedBox(height: 8,),
                         Row(
                           children: [
                             const Text('Invite Type: '),
                             const SizedBox(width: 8,),
                             Text('Regular', style: Theme.of(context).textTheme.bodyText1,),
                           ],
                         ),
                         const SizedBox(height: 8,),
                         Row(
                           children: [
                             const Text('Seat Allocation: '),
                             const SizedBox(width: 8,),
                             Text('Table 4, Seat 8', style: Theme.of(context).textTheme.bodyText1,),
                           ],
                         )
                       ],
                     ),
                    )
                 ),
               )
             ],
           )
        ],
      ),
    );
  }
}
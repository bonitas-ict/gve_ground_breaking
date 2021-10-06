import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/src/presentation/pages/dashboard/dashboad.dart';
import './widget/widget.dart';

class LandListingPage extends StatelessWidget {
  const LandListingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/land_bg.svg', fit: BoxFit.cover),
          SafeArea(
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
                      Text('Available \nPlots', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),),
                    ],
                  ),
                ),
                Expanded(
                  child:Container(
                    padding: const EdgeInsets.all(16),
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (_, int index){
                        return const MainItem();
                      },
                    ),
                  ) ,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
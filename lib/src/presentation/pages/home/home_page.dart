import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/home_banner.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: 100,
            child: Stack(
              children: [

              ],
            )  ,
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  SvgPicture.asset('assets/images/home_bg.svg', fit: BoxFit.cover),
                  SingleChildScrollView(
                    child: Container(),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
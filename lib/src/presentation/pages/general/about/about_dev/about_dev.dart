import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutDevPage extends StatelessWidget {
  const AboutDevPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/pay_bg_2.svg'),
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: ()=> Navigator.of(context).pop(),
                        child: const Icon(Icons.arrow_back)
                      ),
                      const SizedBox(height: 40,),
                      Text('Meet the\nDevelopers', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('The Green Valley Estate (GVE) project is powered by the Anambra State Housing Development Corporation (ASHDC) in partnership with 8 notable real estate developers.'),
                        const SizedBox(height: 20),
                        const Text('The developers of the estate are John Joe and Partners, Elson Construction, BO Limited, GWI Limited, Almatex, Anchor-Nuel, Paul-B, and Gwice Dynamic.'),
                        const SizedBox(height: 20),
                        Image.asset('assets/images/d1.png', width: 250,),
                        const SizedBox(height: 10),
                        Image.asset('assets/images/d2.png', width: 250,),
                        const SizedBox(height: 10),
                        Image.asset('assets/images/d3.png', width: 200,),
                        const SizedBox(height: 10),
                        Image.asset('assets/images/d4.png', width: 200,),
                        const SizedBox(height: 10),
                        Image.asset('assets/images/d5.png', width: 270,),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
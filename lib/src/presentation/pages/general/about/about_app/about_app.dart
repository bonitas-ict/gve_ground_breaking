import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({ Key? key }) : super(key: key);

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
                      Text('About\nApp', style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, color: Colors.black),),
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
                        Image.asset('assets/images/gve.png', height: 60,),
                        const SizedBox(height: 20,),
                        Text('Green Valley Estate (GVE) is a smart estate project powered by the Anambra State Housing Development Corporation (ASHDC) in partnership with 8 notable real estate developers. The technology-driven estate would feature 24/7 power supply, good road network, and other facilities to cater the social and commercial needs for residents.',style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16)),
                        const SizedBox(height: 20),
                        Text('The GVE would also feature other facilities such as hospitals, shopping malls, clubs, and top-grade schools. The residential areas of the estate would be divided into detached and semi-detached buildings providing a exotic layout to the entire estate.',style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16))
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
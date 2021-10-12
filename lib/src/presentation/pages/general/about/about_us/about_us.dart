import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({ Key? key }) : super(key: key);

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
                      Text('About\nUs', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),),
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
                        Image.asset('assets/images/ict.png', height: 60,),
                        const SizedBox(height: 20,),
                        const Text('Bonitas ICT is an Information and Communications Technology firm with specializations in Internet Services, Software Development, Cloud Computing / Networking, and Database Management & Administration.'),
                        const SizedBox(height: 20),
                        const Text('With most businesses facing a transition towards the current mobile-first, cloud-first business marketplace, we offer a range of services to ensure that this transition is as seamless as possible.'),
                        const SizedBox(height: 20),
                        const Text('We are principally driven by the excitement of building technologies and solutions that help transform and improve the way businesses operate. Our actions, goals, projects, and mission are tailored around our end customers, ensuring that we turn out only the very best of solutions.'),
                        const SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('CONTACT US', style: Theme.of(context).textTheme.subtitle1,),
                              const SizedBox(height: 4),
                              const Text('+234 813 492 5452'),
                              const Text('ict@bonitasgroup.com'),
                              const Text('www.bonitasict.com'),
                              const SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    child: Image.asset('assets/images/insta.png', height: 30,),
                                  ),
                                  const SizedBox(width: 4,),
                                  GestureDetector(
                                    child: Image.asset('assets/images/facebook.png', height: 30,),
                                  ),
                                  const SizedBox(width: 4,),
                                  GestureDetector(
                                    child: Image.asset('assets/images/linkedin.png', height: 30,),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
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
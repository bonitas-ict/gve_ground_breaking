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
                      Text('Meet the\nDevelopers', style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, color: Colors.black),),
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
                        Text('The Green Valley Estate (GVE) project is powered by the Anambra State Housing Development Corporation (ASHDC) in partnership with 8 notable real estate developers.', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16)),
                        const SizedBox(height: 20),
                        Text('The developers of the estate are John Joe and Partners, Elson Construction, BO Limited, GWI Limited, Almatex, Anchor-Nuel, Paul-B, and Gwice Dynamic.', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16)),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Image.asset('assets/images/m1.png', width:70,),
                            const SizedBox(width: 8,),
                            const Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('BO Limited is an indigenous construction company....'),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Image.asset('assets/images/m2.png', width:70,),
                            const SizedBox(width: 8,),
                            const Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Elson Construction Company Limited has been in the construction business for almost a decade now, with specializations in bridge building,road constructions'),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Image.asset('assets/images/m3.png', width:70,),
                            const SizedBox(width: 8,),
                            const Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Alkatex has deep roots in the development of real estate properties in Nigeria.'),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Image.asset('assets/images/m4.png', width:70,),
                            const SizedBox(width: 8,),
                            const Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('GWI Limited has been in the business of real estate development for about twenty years now....'),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Image.asset('assets/images/m5.png', width:70,),
                            const SizedBox(width: 8,),
                            const Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('NR Anchor-Nuel Resources Limited has been a leader in development of bespoke estates since 1929....'),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Image.asset('assets/images/m6.png', width:70,),
                            const SizedBox(width: 8,),
                            const Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Gwice Dynamic Limited is positioned as a regional in the development of estate properties in Anambra State...'),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Image.asset('assets/images/m7.png', width:70,),
                            const SizedBox(width: 8,),
                            const Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('John Joe and Partners Limited is an engineering and project management consultancy with business operations in real estate'),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Image.asset('assets/images/m8.png', width:70,),
                            const SizedBox(width: 8,),
                            const Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Paul-B Nigeria Plc is a real estate management company in Anambra State with a management team boasting over a hundred years experience....'),
                                ),
                              ),
                            )
                          ],
                        ),
                        // Image.asset('assets/images/d1.png', width: 250,),
                        // const SizedBox(height: 10),
                        // Image.asset('assets/images/d2.png', width: 250,),
                        // const SizedBox(height: 10),
                        // Image.asset('assets/images/d3.png', width: 200,),
                        // const SizedBox(height: 10),
                        // Image.asset('assets/images/d4.png', width: 200,),
                        // const SizedBox(height: 10),
                        // Image.asset('assets/images/d5.png', width: 270,),
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
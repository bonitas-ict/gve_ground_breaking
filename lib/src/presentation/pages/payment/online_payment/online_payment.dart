import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnlinePaymentPage extends StatelessWidget {
  const OnlinePaymentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/pay_bg.svg'),
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
                      Text('Online Payment \nPortal', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),),
                    ],
                  ),
                ),
              ),
              // const Expanded(
              //   child: SingleChildScrollView(
              //     child: PayMethodContainer()
              //   ),
              // )
            ],
          )
        ],
      ),
    );
  }
}
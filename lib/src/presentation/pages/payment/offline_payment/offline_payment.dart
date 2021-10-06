import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OfflinePayment extends StatelessWidget {
  const OfflinePayment({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/pay_bg.svg')
        ],
      ),
    );
  }
}
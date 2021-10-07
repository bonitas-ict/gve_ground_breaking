import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/src/presentation/pages/dashboard/dashboad.dart';
import 'package:gve_opening/src/presentation/pages/payment/pay_method/widget/widget.dart';

class PaymentMathodPage extends StatelessWidget {
  const PaymentMathodPage({Key? key, required this.propertyId, required this.propertyPrice}) : super(key: key);
  final int propertyId;
  final num propertyPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/pay_bg.svg', fit: BoxFit.cover),
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
                        child: Icon(Icons.arrow_back)
                      ),
                      const SizedBox(height: 40,),
                      Text('Payment \nMethod', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),),
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: PayMethodContainer()
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

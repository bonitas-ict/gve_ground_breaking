import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/injection.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/presentation/pages/payment/pay_method/widget/widget.dart';

import '../../../presentation.dart';

class PaymentMathodPage extends StatelessWidget {
  const PaymentMathodPage({Key? key, required this.propertyId, required this.propertyPrice}) : super(key: key);
  final String propertyId;
  final num propertyPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/pay_bg.svg', fit: BoxFit.cover),
          MultiBlocProvider(
            providers: [
              BlocProvider<PaymentInitBloc>(create: (_)=>getIt<PaymentInitBloc>()..add(PaymentInitEvent.initPayment(propertyId))),
              BlocProvider<OnlinePayBloc>(create: (_)=>getIt<OnlinePayBloc>())
            ],
            child: Column(
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
                        Text('Payment \nMethod', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: _StateMachine(amount: propertyPrice , plotId: propertyId ,)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _StateMachine extends StatelessWidget {
  const _StateMachine({ Key? key, required this.amount, required this.plotId }) : super(key: key);
  final num amount;
  final String plotId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentInitBloc, PaymentInitState>(
      builder: (context, state) {
        return state.map(
          initial: (_)=> const Center(child: CircularProgressIndicator(),),//const HomeLoader(), 
          loadInProgress:(_)=> const Center(child: CircularProgressIndicator(),), //const HomeLoader(), 
          loadSuccess:(s) => SingleChildScrollView(child: PayMethodContainer(paymentRef: s.propertyInfo.referenceId, amount:amount,plotId: plotId,isTaken: s.propertyInfo.isTaken,),), 
          loadFailure:(f) => ErrorHandler(handler:()=> context.read<PaymentInitBloc>().add(PaymentInitEvent.initPayment(plotId)),)
        );
      },
    );
  }
}

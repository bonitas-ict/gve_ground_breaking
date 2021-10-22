import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gve_opening/injection.dart';
import 'package:gve_opening/src/application/application.dart';

import '../../../presentation.dart';
import 'widget/widget.dart';

class PayHistoryPage extends StatelessWidget {
  const PayHistoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/pay_bg_2.svg'),
          BlocProvider<PayHistoryBloc>(
            create: (context) => getIt<PayHistoryBloc>()..add(const PayHistoryEvent.loadHistory()),
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
                        Text('Transaction \nHistory', style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, color: Colors.black),),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child:_StateMachine()
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _StateMachine extends StatelessWidget {
  const _StateMachine({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayHistoryBloc, PayHistoryState>(
      builder: (context, state) {
        return state.map(
          initial: (_)=> const Center(child: CircularProgressIndicator(),),//const HomeLoader(), 
          loadInProgress:(_)=> const Center(child: CircularProgressIndicator(),), //const HomeLoader(), 
          loadSuccess:(s) => PayHistoryContainer(paymentHistories:s.paymentHistory), 
          loadFailure:(f) => ErrorHandler(handler:()=> context.read<PayHistoryBloc>().add(const PayHistoryEvent.loadHistory()),)
        );
      },
    );
  }
}
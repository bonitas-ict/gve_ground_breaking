import 'package:flutter/material.dart';
import 'package:gve_opening/src/domain/payment/model/pay_history.dart';

class PayHistoryContainer extends StatelessWidget {
  const PayHistoryContainer({Key? key, required this.paymentHistories}): super(key: key);
  final List<PayHistory> paymentHistories;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: paymentHistories.length,
      itemBuilder: (_, int index){
        return _HistoryItem(payHistory: paymentHistories[index],);
      }
    );
  }
}

class _HistoryItem extends StatelessWidget {
  const _HistoryItem({ Key? key, required this.payHistory}) : super(key: key);
  final PayHistory payHistory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/dollar_icon.png', height: 40,width: 40,),
              const SizedBox(width: 8,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${payHistory.plotId} Purchase', style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 16, fontWeight: FontWeight.normal),),
                    Text(payHistory.date.split('T')[0], style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 12, color: const Color(0xFFA1A59C)),)
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('N${payHistory.amount}', style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 16, fontWeight: FontWeight.normal)),
                  Text(payHistory.stauts? 'Successful': 'Failed', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14, color: payHistory.stauts? const Color(0xFF3DCB76): const Color(0xFFF73112)),)
                ],
              )
            ],
          ),
          const SizedBox(height: 4,),
          const Divider()
        ],
      ),
    );
  }
}

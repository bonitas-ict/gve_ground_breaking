import 'package:flutter/material.dart';
import 'package:gve_opening/src/domain/payment/model/pay_history.dart';
import 'package:gve_opening/src/presentation/utils/currency_ext.dart';

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
                    Text('Plot ${payHistory.plotId.substring(4)} Purchase', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18, fontWeight: FontWeight.normal),),
                    Text(payHistory.date.split('T')[0], style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14, color: const Color(0xFFA1A59C)),)
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(payHistory.amount.formatCurrency(context), style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18, fontWeight: FontWeight.normal)),
                  Text(payHistory.isNotPending == false? 'Pending': payHistory.status == false ? 'Failed': 'Successful', 
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14, color:payHistory.isNotPending == false? const Color(0xFF32BDEF): payHistory.status == true ? const Color(0xFF3DCB76): const Color(0xFFF73112)),)
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

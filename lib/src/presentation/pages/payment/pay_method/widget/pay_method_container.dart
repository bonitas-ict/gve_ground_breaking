import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paystack_client/flutter_paystack_client.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gve_opening/src/application/application.dart';
import 'package:gve_opening/src/misc/debug_util.dart';
import 'package:gve_opening/src/presentation/presentation.dart';

class PayMethodContainer extends StatefulWidget {
  const PayMethodContainer(
      {Key? key,
      required this.paymentRef,
      required this.amount,
      required this.plotId,
      required this.isTaken})
      : super(key: key);
  final String? paymentRef;
  final num amount;
  final String plotId;
  final bool isTaken;

  @override
  State<PayMethodContainer> createState() => _PayMethodContainerState();
}

class _PayMethodContainerState extends State<PayMethodContainer> {
  int _value = 0;

  Future<void> makePayment() async {
    final Charge charge = Charge()
      ..email = "etokakingsley@gmail.com"
      ..amount = widget.amount.toInt() * 100
      ..reference =
          widget.paymentRef //'ref_${DateTime.now().millisecondsSinceEpoch}'
      ..putCustomField('Payment for plot', widget.plotId);
    final res = await PaystackClient.checkout(context, charge: charge);
    print(res);
    if (res.status) {
      printLn('Payment received');
      context
          .read<OnlinePayBloc>()
          .add(OnlinePayEvent.verifyPayment(res.reference!));
    } else {
      printLn(res);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _TicketSummary(amount: widget.amount, plotId: widget.plotId,),
          const SizedBox(height: 20),
          Container(
            color: const Color(0xFFF9FBF6),
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: SvgPicture.asset('assets/images/card.svg'),
                  title: Text(
                    'Online Payment',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  trailing: Radio(
                      value: 0,
                      groupValue: _value,
                      activeColor: const Color(0xFF7EB84E),
                      onChanged: (int? value) {
                        setState(() {
                          _value = 0;
                        });
                      }),
                ),
                const Divider(),
                ListTile(
                  leading: SvgPicture.asset('assets/images/bank.svg'),
                  title: Text(
                    'Offline Payment',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  trailing: Radio(
                      value: 1,
                      groupValue: _value,
                      activeColor: const Color(0xFF7EB84E),
                      onChanged: (int? value) {
                        setState(() {
                          _value = 1;
                        });
                      }),
                ),
                //Divider()
              ],
            ),
          ),
          const SizedBox(height: 20),
          Visibility(
            visible: _value == 0 ? false : true,
            child: Container(
              color: const Color(0xFFF9FBF6),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bank Details',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  const Text('Bank Name: Access Bank Nigeria Plc'),
                  const SizedBox(height: 8),
                  const Text('Account No:  0058921418'),
                  const SizedBox(height: 8),
                  const Text('Account Name:  ASHDC GVE')
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          BlocConsumer<OnlinePayBloc, OnlinePayState>(
            listener: (_, OnlinePayState st) {
              st.map(
                  initial: (_) {},
                  loadInProgress: (_) {},
                  loadSuccess: (_) {
                    SnackUtil.showSuccessSnack(
                        context: context, message: 'Payment was successful');
                    Navigator.of(context).pop();
                  },
                  loadFailure: (e) {
                    SnackUtil.showErrorSnack(
                        context: context,
                        message:
                            e.networkFailure.message ?? 'An Error occurred');
                  });
            },
            builder: (context, state) {
              if (state is LoadInProgressX) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF7EB84E)),
                    onPressed: () async {
                      if (_value == 0) {
                        await makePayment();
                      } else {
                        context.router.navigate(OfflinePaymentRoute(
                            plotId: widget.plotId,
                            refNum: widget.paymentRef ?? ''));
                      }
                    },
                    child: const Text('Continue'),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}

class _TicketSummary extends StatelessWidget {
  const _TicketSummary({Key? key, required this.amount, required this.plotId})
      : super(key: key);
  final num amount;
  final String plotId;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: const Color(0xFFF9FBF6),
      child: Stack(
        children: [
          Positioned(
            top: 80,
            left: -20,
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          Positioned(
            top: 80,
            right: -20,
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ticket Summary',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 18),
                ),
                Text('Selected Plot ID: $plotId'),
                Text('Total Cost:  ${amount.toString()}')
              ],
            ),
          )
        ],
      ),
    );
  }
}
